<?php

namespace App\Http\Controllers;

use App\GiftCardPurchase;
use App\Order;
use App\RewardPoint;
use App\Wallet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DhashboardController extends Controller
{
    //
    public function index()
    {
        $wallet = Wallet::where('user_id', auth()->id())->first()->get();
        $orders = Order::where('user_id', auth()->id())->get();
        $reward = RewardPoint::where('user_id', auth()->id())->get();
        $gift_card = GiftCardPurchase::where('user_id', auth()->id())->get();
        $order_items = array();
        foreach ($orders as $order) {
            # code...
            array_push($order_items, DB::table('order_items')
            ->where('order_id', $order->id)->get());
        }
        $products = array();
        foreach($order_items as $items){
            foreach($items as $item){
                array_push($products, DB::table('products')->where('id', $item->product_id)->get()[0]);
            }
        }
        return view('dashboard', [
            'wallet' => $wallet, 
            'orders' => $orders, 
            'reward' => $reward,
            'cards' => $gift_card,
            'products' => $products,
            'items' => $order_items,
        ]);
    }
}
