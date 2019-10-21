<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\Client;

use  App\Payment;

use Validator;

class PaymentController extends Controller
{
    public function form($current)
    {
        $client = Client::all()->find($current);
        return view('payment.create', compact('client'));
    }

    public function form_update($current)
    {
        $payment = Payment::find($current);
        return view('payment.update', compact('payment'));
    }

    public function create(Request $request)
    {
        $validator = Validator::make(
            [
                'payment' => $request->payment,
                // 'date' => $request->date
            ],
            [
                'payment' => 'required|numeric',
                // 'date' => 'required|date'
            ]
        );

        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors());
        }

        $client = Client::all()->find($request->client_id);
        $client->debt = $client->debt - $request->payment;
        $client->save();

        if (!$request->date) $request->date = date('Y-m-d H:i:s');

        $payment = Payment::create([
            'client_id' => $request->client_id,
            'quantity' => $request->payment,
            'pay_date' => $request->date,
        ]);

        return redirect(route('clients', 1));
    }

    public function update(Request $request)
    {
        $validator = Validator::make(
            [
                'new_quantity' => $request->new_quantity
            ],
            [
                'new_quantity' => 'required|numeric'
            ]
        );

        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors());
        }

        $payment = Payment::find($request->payment_id);
        $client = Client::find($payment->client_id);

        $client->debt = ($client->debt + $payment->quantity) - $request->new_quantity;
        $client->save();

        $payment->quantity = $request->new_quantity;
        $payment->save();

        return redirect(route('clients', 1));
    }
}
