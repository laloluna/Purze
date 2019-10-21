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
                                    <td>
                                        <a href="{{ route('sells.form_update', $item->sell->id) }}" class="btn btn-block btn-success">{{ $item->sell->client->name }}</a>
                                    </td>
                                    <td class="text-success">${{ round($item->sell->price) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <form class="form-horizontal form-material m-t-30" method="POST" action="{{ route('sells.filter') }}" enctype="multipart/form-data">
        @csrf
            <div class="card">
                <br>
                <div class="col-md-12">
                    <select class="form-control form-control-line" id="client_id" name="client_id">
                            <option value="-1"> Todos </option>
                        @foreach($clients as $key=>$client)
                            <option value="{{ $client->id }}"> {{ $client->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="card-block">
                    <div class="col-md-12 align-right">
                        <button type="submit"  class="btn btn-block btn-success">Filtrar</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Row -->
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->

@endsection