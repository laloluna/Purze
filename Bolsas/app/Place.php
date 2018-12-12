<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
    protected $table = "places";

    protected $fillable = ['name', 'tax'];

    public function items(){
        return $this->hasMany('App\Item');
    }
}
