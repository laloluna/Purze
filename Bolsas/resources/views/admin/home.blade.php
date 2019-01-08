@extends('layouts.sidebar')

@section('title', 'Administracion')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Marcas</h4>
                <div class="text-right">
                    <select class="form-control form-control-line">
                        @foreach($brands as $key=>$brand)
                            <option value="{{ $brand->id }}"> {{ $brand->name }}</option>
                        @endforeach
                    </select>
                </div>
                <br>
                <form class="form-horizontal form-material" method="POST" action="{{ route('admin.brands.create') }}" enctype="multipart/form-data">
                @csrf
                    <div class="form-group">
                        <label class="col-md-12">Nuevo</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control form-control-line" id="name" name="name"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit"  class="btn btn-block btn-success">A&ntilde;adir marca</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Row -->
<!-- Row -->
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Colores</h4>
                <div class="text-right">
                    <select class="form-control form-control-line">
                        @foreach($colors as $key=>$color)
                            <option value="{{ $color->id }}"> {{ $color->name }}</option>
                        @endforeach
                    </select>
                </div>
                <br>
                <form class="form-horizontal form-material" method="POST" action="{{ route('admin.colors.create') }}" enctype="multipart/form-data">
                @csrf
                    <div class="form-group">
                        <label class="col-md-12">Nuevo</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control form-control-line" id="name" name="name"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit"  class="btn btn-block btn-success">A&ntilde;adir color</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Row -->
<!-- Row -->
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block">
                <h4 class="card-title">Tipo</h4>
                <div class="text-right">
                    <select class="form-control form-control-line">
                        @foreach($types as $key=>$type)
                            <option value="{{ $type->id }}"> {{ $type->name }}</option>
                        @endforeach
                    </select>
                </div>
                <br>
                <form class="form-horizontal form-material" method="POST" action="{{ route('admin.types.create') }}" enctype="multipart/form-data">
                @csrf
                    <div class="form-group">
                        <label class="col-md-12">Nuevo</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control form-control-line" id="name" name="name"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit"  class="btn btn-block btn-success">A&ntilde;adir tipo</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Row -->
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->

@endsection