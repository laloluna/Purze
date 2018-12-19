<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Client;

use  App\Payment;

class PaymentController extends Controller
{
    public function form($current)
    {
        $client = Client::all()->find($current);
        return view('payment.create', compact('client'));
    }

    public function create(Request $request)
    {
        $client = Client::all()->find($request->client_id);
        $client->debt = $client->debt - $request->payment;
        $client->save();

        $payment = Payment::create([
            'client_id' => $request->client_id,
            'quantity' => $request->payment,
            'pay_date' => date('Y-m-d H:i:s'),
        ]);

        return redirect(route('clients'));
    }
}
