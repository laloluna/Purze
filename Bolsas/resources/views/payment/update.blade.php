@extends('layouts.sidebar')

@section('title', 'Cambio en pago')

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
                    <h2 class="font-normal">{{ $payment->client->name }}</h2>
                    <h3 class="card-subtitle">{{ $payment->pay_date }}</h3>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-lg-12"><font class="text-themecolor ">Pago</font></div>
                        <div class="col-lg-12"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($payment->quantity) }}</font></a></div>
                    </div>
                    <br>
                    <form class="form-horizontal form-material" method="POST" action="{{ route('payments.update') }}" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group">
                            <label class="col-md-12">Correccion</label>
                            <div class="col-md-12">
                                <input type="number" step=0.001 placeholder="$" class="form-control form-control-line" id="new_quantity" name="new_quantity">
                                <input type="hidden" name="payment_id" id="payment_id" value="{{ $payment->id }}">
                                <div>
                                    <font color="#f00">{{ $errors->first('new_quantity') }}</font>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <button type="submit"  class="btn btn-block btn-success">Cambiar Pago</button>
                            </div>
                        </div>
                    </form>
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