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
                'payment' => $request->payment
            ],
            [
                'payment' => 'required|numeric'
            ]
        );

        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors());
        }

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

        return redirect(route('clients'));
    }
}
