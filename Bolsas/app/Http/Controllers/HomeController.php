<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Place;

use  App\Color;

use  App\Brand;

use  App\Type;

use  App\Size;

use  App\Item;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $all_items = Item::all();
        $items = $all_items->where('sold', 0);
        $sold_items = $all_items->where('sold', 1);
        $percentage = 0;
        $win = 0;
        if($sold_items->count() != 0 && $all_items->count() != 0){
            $percentage = round(($sold_items->count() / $all_items->count()) * 100);
        }

        foreach($sold_items as $key=>$sold_item){
            $diff = $sold_item->cost_final - $sold_item->sold;
            $win += $diff;
        }
        $win = round($win);

        return view('home', compact('items', 'sold_items', 'percentage', 'win'));
    }

    public function admin()
    {
        $places = Place::all();
        $colors = Color::orderBy('name')->get(); ;
        $brands = Brand::orderBy('name')->get(); ;
        $types = Type::orderBy('name')->get(); ;
        $sizes = Size::all();

        return view('admin.home', compact('places', 'colors', 'brands', 'types', 'sizes'));
    }

    public function colors(Request $request)
    {
        if (!Color::where('name', $request->name)->exists()) {
            $color = Color::create([
                'name' => $request->name,
            ]);
        }

        return redirect(route('admin'));
    }

    public function brands(Request $request)
    {
        if (!Brand::where('name', $request->name)->exists()) {
            $brand = Brand::create([
                'name' => $request->name,
            ]);
        }

        return redirect(route('admin'));
    }

    public function types(Request $request)
    {
        if (!Type::where('name', $request->name)->exists()) {
            $type = Type::create([
                'name' => $request->name,
            ]);
        }

        return redirect(route('admin'));
    }
    
}
