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
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($items as $key=>$item)
                                <tr href="">
                                    <td>
                                        <span class="round"><a href="{{ route('items.show', $item->id) }}"><img src="{{ asset($item->description->photo) }}" alt="user" width="50" /></a></span>
                                    </td>
                                    <td>
                                        <h6>{{ $item->description->brand->name }}</h6>
                                        <small class="text-muted">{{ $item->description->type->name }} </small>
                                    </td>
                                    <td>{{ $item->sell->client->name }}</td>
                                    <td class="text-success">${{ round($item->sell->price) }}</td>
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