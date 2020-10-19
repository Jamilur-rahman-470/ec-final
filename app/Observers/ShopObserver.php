<?php

namespace App\Observers;

use App\Mail\ShopActivated;
use App\Shop;
use Illuminate\Support\Facades\Mail;

class ShopObserver
{
    /**
     * Handle the shop "created" event.
     *
     * @param  \App\Shop  $shop
     * @return void
     */
    public function created(Shop $shop)
    {
        //
    }

    /**
     * Handle the shop "updated" event.
     *
     * @param  \App\Shop  $shop
     * @return void
     */
    public function updated(Shop $shop)
    {
        // dd($shop->is_active, $shop->getOriginal('is_active'));
        if($shop->getOriginal('is_active') == 'false' && $shop->is_active == true)
        {
            //dd('shop is acive');
            //send mail to customer
            //Mail::to($shop->owner)->send(new ShopActivated($shop));

            //change role from customer to seller
            //Will uncomment after voyager or admin is complete
            $shop->owner->setRole('seller');
        }
        else
        {
            //dd('shop is inactive')
        }

        //check if active column is changed from inactive to active


            //send mail to customer

            //change role from customer to seller
    }

    /**
     * Handle the shop "deleted" event.
     *
     * @param  \App\Shop  $shop
     * @return void
     */
    public function deleted(Shop $shop)
    {
        //
    }

    /**
     * Handle the shop "restored" event.
     *
     * @param  \App\Shop  $shop
     * @return void
     */
    public function restored(Shop $shop)
    {
        //
    }

    /**
     * Handle the shop "force deleted" event.
     *
     * @param  \App\Shop  $shop
     * @return void
     */
    public function forceDeleted(Shop $shop)
    {
        //
    }
}
