@extends('layouts.sidebar')

@section('title', 'Clientes')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <!-- Column -->
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Cliente estelar</h4>
                <div class="text-right">
                    <h2 class="font-light m-b-0 text-success"> $1600</h2>
                    <span class="text-muted">Soco</span>
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
                
                <h4 class="card-title">Lista de Clientes</h4>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Deuda</th>
                                <th>Abonar</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($clients as $key=>$client)
                                <tr href="">
                                    <td><font>{{ $client->name }}</td>
                                    <td><font class="text-success">{{ $client->debt }}</td>
                                    <td><a href="{{ route('payments.form', $client->id) }}" class="btn btn-success"> +</a></td>
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
                    <a href="{{ route('clients.form') }}" class="btn btn-block btn-primary"> A&ntilde;adir cliente</a>
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