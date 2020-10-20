<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GiftCard extends Model
{
    //
    public function gift_card_purchase()
    {
        return $this->hasMany(GiftCardPurchase::class, 'card_id');
    }
}
