<?php

namespace App\Http\Controllers;

use App\GiftCardPurchase;
use Illuminate\Http\Request;

class GiftCardPurchaseController extends Controller
{
    //
    public function store(Request $request)
    {
        $card = new GiftCardPurchase();
        $card->user_id = auth()->id();
        $card->card_id = $request->input('card_id');
        $card->amount = $request->input('amount');
        $card->uid = $request->input('uid');
        $card->is_spent = 0;
        $card->save();

        return redirect()->route('dash');
    }
    public function index()
    {
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


    /**
     * Display the specified resource.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function show(GiftCardPurchase $card)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function edit(GiftCardPurchase $card)
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
    public function update(Request $request, GiftCardPurchase $card)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function destroy(GiftCardPurchase $card)
    {
    }
}
