<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Size extends Model
{
    protected $table = "sizes";

    protected $fillable = ['name'];

    public function descriptions(){
        return $this->hasMany('App\Description');
    }
}
