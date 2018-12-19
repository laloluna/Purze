<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Client;

use  App\Sell;

class ClientController extends Controller
{
    public function index()
    {
        $clients = Client::all();
        return view('client.home', compact('clients'));
    }

    public function form()
    {
        return view('client.create');
    }

    public function create(Request $request)
    {
        $client = Client::create([
            'name' => $request->name,
            'last_name' => $request->last_name,
            'initial_debt' => $request->initial_debt,
            'debt' => $request->initial_debt,
        ]);

        //$sell = Sell::create([
        //    'client_id' => $client->id,
        //    'item_id' => 100,
        //    'debt_or_prod' => 0,
        //    'price' => $request->initial_debt,
        //]);

        return redirect(route('clients'));
    }

    public function payment()
    {
        return view('client.create');
    }
}
