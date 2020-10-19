<?php

namespace App\Http\Controllers;

use App\Order;
use App\RewardPoint;
use Illuminate\Http\Request;
use App\Wallet;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'shipping_fullname' => 'required',
            'shipping_state' => 'required',
            'shipping_city' => 'required',
            'shipping_zipcode' => 'required',
            'shipping_address' => 'required',
            'shipping_phone' => 'required',
            'payment_method' => 'required',
        ]);

        $order = new Order();

        $order->order_number = uniqid('OrderNumber-');

        $order->shipping_fullname = $request->input('shipping_fullname');
        $order->shipping_state = $request->input('shipping_state');
        $order->shipping_city = $request->input('shipping_city');
        $order->shipping_zipcode = $request->input('shipping_zipcode');
        $order->shipping_address = $request->input('shipping_address');
        $order->shipping_phone = $request->input('shipping_phone');


        if (!$request->has('billing_fullname')) {
            $order->billing_fullname = $request->input('shipping_fullname');
            $order->billing_state = $request->input('shipping_state');
            $order->billing_city = $request->input('shipping_city');
            $order->billing_zipcode = $request->input('shipping_zipcode');
            $order->billing_address = $request->input('shipping_address');
            $order->billing_phone = $request->input('shipping_phone');
        } else {
            $order->billing_fullname = $request->input('billing_fullname');
            $order->billing_state = $request->input('billing_state');
            $order->billing_city = $request->input('billing_city');
            $order->billing_zipcode = $request->input('billing_zipcode');
            $order->billing_address = $request->input('billing_address');
            $order->billing_phone = $request->input('billing_phone');
        }


        $order->grand_total = \Cart::session(auth()->id())->getTotal();
        $order->item_count = \Cart::session(auth()->id())->getContent()->count();

        $order->user_id = auth()->id();

        //$order->status = 'pending';

        // Add to wallet
        $items = \Cart::session(auth()->id())->getContent();
        $newWallet = 0.0;
        foreach ($items as $item) {
            $newWallet = $newWallet + $item['price'] * $item['quantity'] * $item['associatedModel']['cash_back_percent'] / 100;
        }
        $oldWallet = Wallet::where('user_id', auth()->id());
        if (!$oldWallet->count()) {
            $wallet = new Wallet();
            $wallet->user_id = auth()->id();
            $wallet->amount = $newWallet;
            $wallet->save();
        } else {
            // $amount = $oldWallet->amount + $newWallet;
            DB::table('wallets')
                ->where('user_id', auth()->id())
                ->increment('amount', $newWallet);
        }
        //ADD TO REWARD POINT

        $newReward = 0.0;
        foreach ($items as $item) {
            $newReward = $newReward + $item['associatedModel']['reward_point'];
        }
        $oldReward = RewardPoint::where('user_id', auth()->id());
        if (!$oldReward->count()) {
            $reward = new RewardPoint();
            $reward->user_id = auth()->id();
            $reward->point = $newReward;
            $reward->save();
        } else {
            // $amount = $oldReward->amount + $newReward;
            DB::table('reward_points')
                ->where('user_id', auth()->id())
                ->increment('point', $newReward);
        }
        //


        //save order Items

        // $cartItems = \Cart::session(auth()->id())->getContent();

        // foreach ($cartItems as $items) {
        //     $order->items()->attach($items->id, ['price' => $items->price, 'quantity' => $items->quantity]);
        // }


        //payment option
        if (request('payment_method') == 'cash_on_delivery') {
            //redirect to bkash
            //return redirect()->route('some route');

            //send mail
            //Mail::to($order->user->email)->send(new OrderPaid($order));
            $order->payment_method = 'cash_on_delivery';
            $order->save();
            $order->generateSubOrders();
            $cartItems = \Cart::session(auth()->id())->getContent();

            foreach ($cartItems as $items) {
                $order->items()->attach($items->id, ['price' => $items->price, 'quantity' => $items->quantity]);
            }

            \Cart::session(auth()->id())->clear();
            return redirect()->route('home')->withMessage('Order has been placed');
        }


        //Point
        if (request('payment_method') == 'reward_point') {
            $check = RewardPoint::where('user_id', auth()->id())->get();
            if (\Cart::session(auth()->id())->getTotal() <= $check[0]->point * 10) {
                DB::table('reward_points')
                    ->where('user_id', auth()->id())
                    ->decrement('point', \Cart::session(auth()->id())->getTotal() / 10);
                $order->payment_method = 'reward_point';
                $order->is_paid = 1;
                $order->save();
                $order->generateSubOrders();
                $cartItems = \Cart::session(auth()->id())->getContent();

                foreach ($cartItems as $items) {
                    $order->items()->attach($items->id, ['price' => $items->price, 'quantity' => $items->quantity]);
                }

                \Cart::session(auth()->id())->clear();
                return redirect()->route('home')->withMessage('Order has been placed');
            } else {
                return redirect()->route('home')->withMessage('Not enough in wallet');
            }
        }


        //Wallet
        if (request('payment_method') == 'wallet') {
            $check = Wallet::where('user_id', auth()->id())->get();
            if (\Cart::session(auth()->id())->getTotal() <= $check[0]->amount) {
                DB::table('wallets')
                    ->where('user_id', auth()->id())
                    ->decrement('amount', \Cart::session(auth()->id())->getTotal());
                DB::table('wallets')
                    ->where('user_id', auth()->id())
                    ->increment('amount_spend', \Cart::session(auth()->id())->getTotal());
                $order->payment_method = 'wallet';
                $order->is_paid = 1;
                $order->save();
                $order->generateSubOrders();
                $cartItems = \Cart::session(auth()->id())->getContent();

                foreach ($cartItems as $items) {
                    $order->items()->attach($items->id, ['price' => $items->price, 'quantity' => $items->quantity]);
                }

                \Cart::session(auth()->id())->clear();
                return redirect()->route('home')->withMessage('Order has been placed');
            } else {
                return redirect()->route('home')->withMessage('Not enough in wallet');
            }
        }
        if (request('payment_method') == 'bkash') {
            $order->payment_method = 'bkash';
            $order->save();
            $order->generateSubOrders();
            $cartItems = \Cart::session(auth()->id())->getContent();

            foreach ($cartItems as $items) {
                $order->items()->attach($items->id, ['price' => $items->price, 'quantity' => $items->quantity]);
            }

            \Cart::session(auth()->id())->clear();
            return redirect()->route('home')->withMessage('Order has been placed');
        }
        //empty the cart
        //\Cart::session(auth()->id())->clear();

        //send email or sms to customer

        //take user to Order Completion page

        //return redirect()->route('home')->withMessage('Order has been placed');

        dd('Order Create', $order);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}
