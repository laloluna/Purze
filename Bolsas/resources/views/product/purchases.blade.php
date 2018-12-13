@extends('layouts.sidebar')

@section('title', 'Ventas')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Productos Vendidos</h4>
                <div class="table-responsive m-t-40">
                    <table class="table stylish-table">
                        <thead>
                            <tr>
                                <th colspan="2">Producto</th>
                                <th>Cliente</th>
                                <th>Venta</th>
                                <th>Abonado</th>
                                <th>Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($items as $key=>$item)
                                <tr href="">
                                    <td>
                                        <span class="round"><img src="{{ $item->description->photo }}" alt="user" width="50" /></span>
                                    </td>
                                    <td>
                                        <h6>{{ $item->description->brand->name }}</h6><small class="text-muted">{{ $item->description->type->name }} / {{ $item->description->color->name }} </small>
                                    </td>
                                    <td>${{ round($item->price_final) }}</td>
                                    <td>${{ round($item->cost_final) }}</td>
                                    <td>${{ round($item->sell_final) }}</td>
                                    <td width="20%">
                                        <a href="" class="btn btn-success"> Abonar </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
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