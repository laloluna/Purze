<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Database\Eloquent\Builder;

use  App\Item;

use  App\Sell;

use  App\Client;

use Validator;

class SellController extends Controller
{
    public function index()
    {
        $items = Item::all()->where('sold', 1);
        $clients = Client::all();

        return view('sell.home', compact('items', 'clients'));
    }

    public function filter(Request $request)
    {
        $items = Item::all()->where('sold', 1);
        if($request->client_id != '-1'){
            $items = Item::whereHas('sell', function (Builder $query) use($request){
                $query->where('client_id', $request->client_id);
            })->get();
        }
        $clients = Client::all();

        return view('sell.home', compact('items', 'clients'));
    }

    public function form($current)
    {
        $item = Item::all()->find($current);
        $clients = Client::all();
        return view('sell.create', compact('item', 'clients'));
    }

    public function form_update($current)
    {
        $sell = Sell::all()->find($current);
        $item = Item::all()->find($sell->item_id);
        $clients = Client::all();
        return view('sell.update', compact('sell', 'item', 'clients'));
    }

    public function create(Request $request)
    {
        $validator = Validator::make(
            [
                'final_price' => $request->final_price
            ],
            [
                'final_price' => 'required|numeric'
            ]
        );

        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors());
        }

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

    public function update(Request $request)
    {
        $sell = Sell::find($request->sell_id);
        $sell->client_id = $request->new_client_id;
        $sell->save();

        $old_client = Client::find($request->old_client_id);
        $old_client->debt = $old_client->debt - $sell->price;
        $old_client->save();

        $new_client = Client::find($request->new_client_id);
        $new_client->debt = $new_client->debt + $sell->price;
        $new_client->save();

        return redirect(route('sells'));
    }

    public function delete($current)
    {
        $sell = Sell::find($current);

        $item = Item::find($sell->item_id);
        $item->sold = 0;
        $item->save();

        $client = Client::find($sell->client_id);
        $client->debt = $client->debt - $sell->price;
        $client->save();

        $sell->delete();

        return redirect(route('sells'));
    }
}
