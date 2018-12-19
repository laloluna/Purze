<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Item;

use  App\Sell;

use  App\Client;

class SellController extends Controller
{
    public function index()
    {
        $items = Item::all()->where('sold', 1);
        return view('sell.home', compact('items'));
    }

    public function form($current)
    {
        $item = Item::all()->find($current);
        $clients = Client::all();
        return view('sell.create', compact('item', 'clients'));
    }

    public function create(Request $request)
    {
        $sell = Sell::create([
            'client_id' => $request->client_id,
            'item_id' => $request->item_id,
            'debt_or_prod' => 1,
            'price' => $request->final_price,
        ]);

        $client = Client::all()->find($request->client_id);
        $client->debt = $client->debt + $sell->price;
        $client->save();

        $item = Item::all()->find($request->item_id);
        $item->sold = 1;
        $item->save();

        return redirect(route('home'));
    }
}
