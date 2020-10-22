<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class ProductSinglePage extends Controller
{
    //
    public function index(){
        $prodid = request('prodId');
        $product = Product::find($prodid);
        return view('product-single', ['product' => $product]);
    }
}
