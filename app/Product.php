<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    // public function p(){

    //     return $this->hasMany(Wishlist::class, 'product_id');
    // }

    public function shop()
    {
        return $this->belongsTo(Shop::class, 'shop_id');
    }


}
