<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $table = "payments";

    protected $fillable = ['client_id', 'quantity', 'pay_date'];

    public function client(){
        return $this->belongsTo('App\Client');
    }
}
