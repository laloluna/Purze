<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Description extends Model
{
    protected $table = "descriptions";

    protected $fillable = ['extra', 'photo', 'size_id', 'type_id', 'brand_id', 'color_id'];

    public function item(){
        return $this->hasOne('App\Item');
    }

    public function size(){
        return $this->belongsTo('App\Size');
    }

    public function color(){
        return $this->belongsTo('App\Color');
    }

    public function brand(){
        return $this->belongsTo('App\Brand');
    }

    public function type(){
        return $this->belongsTo('App\Type');
    }
}
