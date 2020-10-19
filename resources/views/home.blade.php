@extends('layouts.app')

@section('content')
    <x-small-banner />
    <x-large-banner />
    <div class="container">
        {{-- <h2>Products</h2>

        <div class="row">

            @foreach ($allProducts as $product)

                @include('product.single_product');

            @endforeach



        </div> --}}
        <h1 class="text-center mt-5">Featured Products</h1>
        <div id="line" class="my-3">
            <div></div>
        </div>
        <br>
        <br>
        <div class="products">
            @foreach ($allProducts as $product)

                @include('product.single_product')

            @endforeach
        </div>
        <br>
        <br>
        <h1 class="text-center mt-5">Shop By Category</h1>
        <div id="line" class="my-3">
            <div></div>
        </div>
        <br>
        <br>
        



    </div>
@endsection
