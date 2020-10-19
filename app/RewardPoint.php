<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RewardPoint extends Model
{
    //
    protected $fillable = ['user_id', 'point'];
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
