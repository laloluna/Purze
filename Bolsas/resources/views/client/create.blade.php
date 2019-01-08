@extends('layouts.sidebar')

@section('title', 'Nuevo Cliente')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <!-- Column -->
    <div class="col-lg-12 col-xlg-9 col-md-7">
        <div class="card">
            <div class="card-block">
                <form class="form-horizontal form-material" method="POST" action="{{ route('clients.create') }}" enctype="multipart/form-data">
                @csrf
                    <div class="form-group">
                        <label class="col-md-12">Nombre</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control form-control-line" id="name" name="name"></textarea>
                            <div>
                                <font color="#f00">{{ $errors->first('name') }}</font>
                            </div>
                        </div>
                    </div><div class="form-group">
                        <label class="col-md-12">Apellido</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control form-control-line" id="last_name" name="last_name"></textarea>
                            <div>
                                <font color="#f00">{{ $errors->first('last_name') }}</font>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Deuda actual</label>
                        <div class="col-md-12">
                            <input type="number" step=0.001 placeholder="$" class="form-control form-control-line" id="initial_debt" name="initial_debt">
                            <div>
                                <font color="#f00">{{ $errors->first('initial_debt') }}</font>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit"  class="btn btn-block btn-success">A&ntilde;adir cliente</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Column -->
</div>
<!-- Row -->
<!-- ============================================================== -->
<!-- End Page Content -->
<!-- ============================================================== -->

@endsection