<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ShopPageController extends Controller
{
    //
    public function index()
    {
        $products = Product::take(1000)->get();
        return view('shop', ['allProd' => $products]);
    }
}
