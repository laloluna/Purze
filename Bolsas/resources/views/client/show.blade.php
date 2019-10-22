@extends('layouts.sidebar')

@section('title', 'Pagos de cliente')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <!-- Column -->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-block">
                <center class="m-t-30">
                    <h2 class="font-normal">{{ $client->name }}</h2>
                    <h3 class="card-subtitle">{{ $client->last_name }}</h3>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-lg-12"><font class="text-themecolor ">Saldo</font></div>
                        <div class="col-lg-12"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($client->debt) }}</font></a></div>
                    </div>
                    <br>
                    <table class="table stylish-table">
                        <thead>
                            <tr>
                                <th>Pago</th>
                                <th>Fecha</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($payments as $key=>$payment)
                                <tr>
                                    <td><a href="{{ route('payments.form_update', $payment->id) }}" class="text-success">${{ round($payment->quantity) }}</a></td>
                                    <td><span>{{ $payment->pay_date }}</span> </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </center>
            </div>
        </div>
    </div>
    <!-- Column -->
</div>
<!-- Row -->
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->

@endsection