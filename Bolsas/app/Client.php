<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $table = "clients";

    protected $fillable = ['name', 'last_name', 'initial_debt', 'debt'];

    public function payments(){
        return $this->hasMany('App\Payment');
    }

    public function sells(){
        return $this->hasMany('App\Sell');
    }
}
