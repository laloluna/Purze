@extends('layouts.sidebar')

@section('title', 'Cambio de venta')

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
                    <img src="{{ asset($item->description->photo) }}" class="img-circle" width="200" />
                    <h2 class="font-normal">{{ $item->description->brand->name }}</h2>
                    <h3 class="card-subtitle">{{ $item->description->type->name }} / {{ $item->description->color->name }}</h3>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-lg-12"><font class="text-themecolor ">Precio Venta</font></div>
                        <div class="col-lg-12"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($sell->price) }}</font></a></div>
                    </div>
                    <form class="form-horizontal form-material m-t-30" method="POST" action="{{ route('sells.update') }}" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group">
                            <label class="col-md-12">Cliente</label>
                            <div class="col-sm-12">
                                <select class="form-control form-control-line" id="new_client_id" name="new_client_id">
                                    @foreach($clients as $key=>$client)
                                        <option value="{{ $client->id }}"> {{ $client->name }}</option>
                                    @endforeach
                                </select>
                                <input type="hidden" name="sell_id" id="sell_id" value="{{ $sell->id }}">
                                <input type="hidden" name="item_id" id="item_id" value="{{ $item->id }}">
                                <input type="hidden" name="old_client_id" id="old_client_id" value="{{ $sell->client_id }}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <button type="submit"  class="btn btn-block btn-success">Cambiar Venta</button>
                            </div>
                        </div>
                    </form>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <a href="{{ route('sells.delete', $sell->id) }}" class="btn btn-block btn-danger">Eliminar Venta</a>
                        </div>
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