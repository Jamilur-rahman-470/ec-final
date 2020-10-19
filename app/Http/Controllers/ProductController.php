<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categoryId = request('category_id');
        $categoryName = null;

        if($categoryId)
        {
            $category = Category::find($categoryId);
            $categoryName = $category->name;
            
            //$products = $category->products;
            $products = $category->allProducts();

        }
        else
        {
            $products = Product::take(1000)->get();
        }
        $categories = Category::whereNull('parent_id')->get();
        return view('product.index', compact('products', 'categoryName', 'categories'));
    }


    public function search(Request $request)
    {
        $query = $request->input('query');

        $products = Product::where('name','LIKE',"%$query%")->paginate(10);

        return view('product.catalog',compact('products'));
    }

}
