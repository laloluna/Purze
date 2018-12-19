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
                    <img src="{{ $item->description->photo }}" class="img-circle" width="200" />
                    <h2 class="font-normal">{{ $item->description->brand->name }}</h2>
                    <h3 class="card-subtitle">{{ $item->description->type->name }} / {{ $item->description->color->name }}</h3>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-lg-12"><span class="text-muted"><font class="font-20">{{ $item->description->extra }}</font></span></div>
                    </div>
                    <br>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-lg-12"><font class="text-themecolor ">Costo</font></div>
                        <div class="col-lg-12"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($item->cost_final) }}</font></a></div>
                    </div>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-lg-12"><font class="text-success">Costo Final</font></div>
                        <div class="col-lg-12"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($item->final) }}</font></a></div>
                    </div>
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