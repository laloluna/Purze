<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sell extends Model
{
    protected $table = "sells";

    protected $fillable = ['client_id', 'item_id', 'debt_or_prod', 'price'];

    public function client(){
        return $this->belongsTo('App\Client');
    }

    public function item(){
        return $this->belongsTo('App\Item');
    }
}
