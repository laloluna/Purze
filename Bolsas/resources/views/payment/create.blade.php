@extends('layouts.sidebar')

@section('title', 'Confirmacion')

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
                        <div class="col-lg-12"><font class="text-themecolor ">Deuda</font></div>
                        <div class="col-lg-12"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($client->debt) }}</font></a></div>
                    </div>
                    <form class="form-horizontal form-material m-t-30" method="POST" action="{{ route('payments.create') }}" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group">
                            <label class="col-md-6">Abono</label>
                            <div class="col-md-6">
                                <input type="number" step=0.001 placeholder="$" class="form-control form-control-line" id="payment" name="payment">
                                <input type="date" class="form-control" id="date" name="date">
                                <input type="hidden" name="client_id" id="client_id" value="{{ $client->id }}">
                                <div>
                                    <font color="#f00">{{ $errors->first('payment') }}</font>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <button type="submit"  class="btn btn-block btn-success">Confirmar Pago</button>
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