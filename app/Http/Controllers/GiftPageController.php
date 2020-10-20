<?php

namespace App\Http\Controllers;

use App\GiftCard;
use App\Product;
use Illuminate\Http\Request;

class GiftPageController extends Controller
{
    //
    public function index(){
        $cards = GiftCard::take(100)->get();
        $prod_with_cash_back = Product::where('cash_back_percent', '>', 0)->take(1000)->get();
        $prod_with_reward = Product::where('reward_point', '>', 0)->take(1000)->get();
        
        return view('gift', [
            'gift_cards' => $cards,
            'prod_cash' => $prod_with_cash_back,
            'prod_reward' => $prod_with_reward
        ]);
    }
}
