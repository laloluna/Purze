<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Place;
use  App\Color;
use  App\Brand;
use  App\Type;
use  App\Size;
use  App\Description;
use  App\Item;

class ItemController extends Controller
{
    public function create()
    {
        $places = Place::all();
        $colors = Color::all();
        $brands = Brand::all();
        $types = Type::all();
        $sizes = Size::all();

        return view('product.create', compact('places', 'colors', 'brands', 'types', 'sizes'));
    }

    public function confirm(Request $request)
    {
        $img_name = str_replace('public', 'storage', $request->image->store('public/images'));
        
        $description = Description::create([
            'extra' => $request->extra,
            'photo' => $img_name,
            'size_id' => $request->size,
            'type_id' => $request->type,
            'brand_id' => $request->brand,
            'color_id' => $request->color,
        ]);

        $place = Place::all()->where('id', $request->place)->first();
        $price_final = $request->price * $place->tax * $request->dollar;
        $cost_final = $request->cost * $place->tax * $request->dollar;
        $sell_recomended = $cost_final * 2.5;

        $item = Item::create([
            'dollar' => $request->dollar,
            'place_id' => $request->place,
            'price_usd' => $request->price,
            'cost_usd' => $request->cost,
            'price_final' => $price_final,
            'cost_final' => $cost_final,
            'sell_recomended' => $sell_recomended,
            'sell_final' => 0.0,
            'sold' => 0,
            'description_id' => $description->id,
        ]);

        return view('product.confirm', compact('item'));
    }

    public function final(Request $request){
        $item = Item::find($request->item_id);
        $item->sell_final = $request->final_price;
        $item->save();

        return redirect(route('home'));
    }
}
