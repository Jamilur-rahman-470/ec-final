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

                @if ($product->featured)
                    @include('product.single_product')
                @endif

            @endforeach
        </div>
        <br>
        <br>
        <h1 class="text-center mt-5">Top Products</h1>
        <div id="line" class="my-3">
            <div></div>
        </div>
        <br>
        <br>
        <div class="products">
            @foreach ($allProducts as $products)
                @if ($products->top_product)
                    <div class="carousel-item active">
                        @include('product.single_product')
                    </div>
                @endif
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
        <div>
            <div class="shop-by-cats">
                @php
                $cats = TCG\Voyager\Models\Category::where('parent_id', null)->get();
                @endphp
                @foreach ($cats as $Header)
                    <div class="card p-3 my-3">
                        <a href="{{ route('products.index', ['category_id' => $Header->id]) }}"
                            class="h3 my-3 text-center text-danger">{{ $Header->name }}</a>
                        @php
                        $catsInnr = TCG\Voyager\Models\Category::where('parent_id', $Header->id)->get();
                        @endphp
                        @foreach ($catsInnr as $item)
                            <a href="{{ route('products.index', ['category_id' => $item->id]) }}"
                                class="h5 my-2 text-center">{{ $item->name }}</a>
                        @endforeach
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
