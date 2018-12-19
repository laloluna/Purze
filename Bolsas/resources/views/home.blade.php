@extends('layouts.sidebar')

@section('title', 'Productos')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <!-- Column -->
    <div class="col-sm-6">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Ventas</h4>
                <div class="text-right">
                    <h2 class="font-light m-b-0"><i class="ti-arrow-up text-success"></i> 0</h2>
                    <span class="text-muted">Productos</span>
                </div>
                <span class="text-success">0%</span>
                <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 0%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
    <!-- Column -->
    <div class="col-sm-6">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Ganancias</h4>
                <div class="text-right">
                    <h2 class="font-light m-b-0"><i class="ti-arrow-up text-info"></i> $0</h2>
                    <span class="text-muted">Dinero ganado</span>
                </div>
                <span class="text-info">0%</span>
                <div class="progress">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 0%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Column -->
</div>
<!-- Row -->
<!-- Row -->
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block">
                
                <h4 class="card-title">Lista de Productos</h4>
                <div class="table-responsive m-t-40">
                    <table class="table stylish-table">
                        <thead>
                            <tr>
                                <th colspan="2">Producto</th>
                                <th>Venta</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($items as $key=>$item)
                                <tr href="">
                                    <td width="10%">
                                        <span class="round"><img src="{{ $item->description->photo }}" alt="user" width="50" /></span>
                                    </td>
                                    <td width="12%">
                                        <h6>{{ $item->description->brand->name }}</h6>
                                        <small class="text-muted">{{ $item->description->type->name }} </small>
                                    </td>
                                    <td><font color="#f00">${{ round($item->sell_final) }}</td>
                                    <td width="20%">
                                        <a href="{{ route('sells.form', $item->id) }}" class="btn btn-success"> +</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-block">
                <div class="col-md-12 align-right">
                    <a href="{{ route('items.form') }}" class="btn btn-block btn-primary"> A&ntilde;adir producto</a>
                </div>
            </div>
        </div>
        
    </div>
</div>
<!-- Row -->
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->

@endsection