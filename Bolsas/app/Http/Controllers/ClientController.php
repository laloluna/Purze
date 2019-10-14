<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Client;

use  App\Sell;

use Validator;

class ClientController extends Controller
{
    public function index()
    {
        $clients = Client::orderBy('debt')->get();
        $stellar = $clients->first();
        $stellar_name = "N/A";
        $stellar_debt = 0;
        if($stellar != null){
            $stellar_name = $stellar->name;
            $stellar_debt = $stellar->debt;
        }

        return view('client.home', compact('clients', 'stellar_name', 'stellar_debt'));
    }

    public function form()
    {
        return view('client.create');
    }

    public function create(Request $request)
    {
        $validator = Validator::make(
            [
                'name' => $request->name,
                'last_name' => $request->last_name,
                'initial_debt' => $request->initial_debt,
            ],
            [
                'name' => 'required|string',
                'last_name' => 'required|string',
                'initial_debt' => 'required|numeric',
            ]
        );

        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors());
        }

        $client = Client::create([
            'name' => $request->name,
            'last_name' => $request->last_name,
            'initial_debt' => $request->initial_debt,
            'debt' => $request->initial_debt,
        ]);

        return redirect(route('clients'));
    }

    public function payment()
    {
        return view('client.create');
    }

    public function show($current)
    {
        $client = Client::all()->find($current);
        $payments = $client->payments() ->orderBy('pay_date', 'desc')->get();
        return view('client.show', compact('client', 'payments'));
    }
}
