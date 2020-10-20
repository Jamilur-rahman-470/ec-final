<?php

namespace App\Http\Controllers;

use App\GiftCardPurchase;
use App\Order;
use App\RewardPoint;
use App\Wallet;
use Illuminate\Http\Request;

class DhashboardController extends Controller
{
    //
    public function index()
    {
        $wallet = Wallet::where('user_id', auth()->id())->first()->get();
        $orders = Order::where('user_id', auth()->id())->get();
        $reward = RewardPoint::where('user_id', auth()->id())->get();
        $gift_card = GiftCardPurchase::where('user_id', auth()->id())->get();
        return view('dashboard', [
            'wallet' => $wallet, 
            'orders' => $orders, 
            'reward' => $reward,
            'cards' => $gift_card
        ]);
    }
}
