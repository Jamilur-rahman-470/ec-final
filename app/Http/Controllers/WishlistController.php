<?php

namespace App\Http\Controllers;

use App\Product;
use App\Wishlist;
use Illuminate\Http\Request;

use function GuzzleHttp\Promise\all;

class WishlistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $wishlists = Wishlist::where('user_id', auth()->user()->id)->paginate(9);
        
        foreach ($wishlists as $item) {
            $prod = Product::where('product_id', $item->product_id);
        }
        return view('wishlists.index', compact('wishlists', 'prod'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $wishlist = new Wishlist;
        $wishlist->user_id = auth()->user()->id;
        $wishlist->product_id = $request->input('pid');
        $wishlist->save();
        return redirect()->route('wishlists.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function show(Wishlist $wishlist)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function edit(Wishlist $wishlist)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Wishlist $wishlist)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function destroy(Wishlist $wishlist)
    {
        $wishlist = Wishlist::findOrFail($wishlist->id);
        //dd($wishlist);
        if($wishlist!=null){
            if(Wishlist::destroy($wishlist->id)){
                return redirect()->route('wishlists.index');
            }
        }
    }
}
