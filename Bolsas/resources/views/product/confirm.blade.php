@extends('layouts.sidebar')

@section('title', 'Confirmacion')

@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<!-- Row -->
<div class="row">
    <!-- Column -->
    <div class="col-lg-12 col-xlg-3 col-md-5">
        <div class="card">
            <div class="card-block">
                <center class="m-t-30"> 
                    <?php 
                        $imageData = base64_encode(Storage::get($item->description->photo));
                        $src = 'data: image/jpeg;base64,'.$imageData;
                        echo '<img src="' . $src . '" class="img-circle" width="200" />';
                    ?>
                    <h2 class="font-normal">{{ $item->description->brand->name }}</h2>
                    <h3 class="card-subtitle">{{ $item->description->type->name }} / {{ $item->description->color->name }}</h3>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-2"><font class="text-themecolor ">Precio</font></div>
                        <div class="col-2"><font class="text-themecolor ">Costo</font></div>
                        <div class="col-2"><font class="text-themecolor ">Sugerencia</font></div>
                    </div>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-2"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($item->price_final) }}</font></a></div>
                        <div class="col-2"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($item->cost_final) }}</font></a></div>
                        <div class="col-2"><a href="javascript:void(0)" class="link"><i class="fa fa-money"></i> <font class="font-20">${{ round($item->sell_recomended) }}</font></a></div>
                    </div>
                    <form class="form-horizontal form-material m-t-30" method="POST" action="{{ route('final') }}" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group">
                            <label class="col-md-6">Precio Final</label>
                            <div class="col-md-6">
                                <input type="number" step=0.001 placeholder="$" class="form-control form-control-line" id="final_price" name="final_price">
                                <input type="hidden" name="item_id" id="item_id" value="{{ $item->id }}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <button type="submit"  class="btn btn-block btn-success">Confirmar Precio</button>
                            </div>
                        </div>
                    </form>
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