<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GiftCardPurchase extends Model
{
    //
    protected $fillable = ['user_id', 'amount', 'card_id', 'is_spent'];
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }
    public function card(){
        return $this->belongsTo(GiftCard::class, 'card_id');
    }
}
