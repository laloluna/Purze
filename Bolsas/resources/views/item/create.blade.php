@extends('layouts.sidebar')

@section('title', 'Nuevo Producto')

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
                <form class="form-horizontal form-material" method="POST" action="{{ route('items.create') }}" enctype="multipart/form-data">
                @csrf
                    <div class="form-group">
                        <label class="col-md-12">Precio Original (dolares)</label>
                        <div class="col-md-12">
                            <input type="number" step=0.001 placeholder="$" class="form-control form-control-line" id="price" name="price">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Costo Original (dolares)</label>
                        <div class="col-md-12">
                            <input type="number" step=0.001 placeholder="$" class="form-control form-control-line" id="cost" name="cost">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Dolar</label>
                        <div class="col-md-12">
                            <input type="number" step=0.001 value="19.1" class="form-control form-control-line" id="dollar" name="dollar">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Lugar</label>
                        <div class="col-sm-12">
                            <select class="form-control form-control-line" id="place" name="place">
                                @foreach($places as $key=>$place)
                                    <option value="{{ $place->id }}"> {{ $place->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Color</label>
                        <div class="col-sm-12">
                            <select class="form-control form-control-line" id="color" name="color">
                                @foreach($colors as $key=>$color)
                                    <option value="{{ $color->id }}"> {{ $color->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Marca</label>
                        <div class="col-sm-12">
                            <select class="form-control form-control-line" id="brand" name="brand">
                                @foreach($brands as $key=>$brand)
                                    <option value="{{ $brand->id }}"> {{ $brand->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Tipo</label>
                        <div class="col-sm-12">
                            <select class="form-control form-control-line" id="type" name="type">
                                @foreach($types as $key=>$type)
                                    <option value="{{ $type->id }}"> {{ $type->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Tama&ntilde;o</label>
                        <div class="col-sm-12">
                            <select class="form-control form-control-line" id="size" name="size">
                                @foreach($sizes as $key=>$size)
                                    <option value="{{ $size->id }}"> {{ $size->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Detalles extra</label>
                        <div class="col-md-12">
                            <input type="text" class="form-control form-control-line" id="extra" name="extra"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12">Foto</label>
                        <div class="col-md-12">
                            <input type="file" class="form-control form-control-line" id="image" name="image"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit"  class="btn btn-block btn-success">A&ntilde;adir producto</button>
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