<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    protected $table = "items";

    protected $fillable = ['dollar', 'place_id', 'price_usd', 'cost_usd', 'price_final', 'cost_final', 'sell_recomended', 'sell_final', 'sold', 'description_id'];

    public function description(){
        return $this->belongsTo('App\Description');
    }

    public function place(){
        return $this->belongsTo('App\Place');
    }
}
