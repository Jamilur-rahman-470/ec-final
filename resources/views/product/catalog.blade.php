@extends('layouts.app')

@section('content')
    <div class="container">
        <nav aria-label="breadcrumb" class="mt-5 mb-2">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href="{{ url('/') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Search</li>
            </ol>
        </nav>
        <h3 class="my-0"><span class="text-danger" id='prod-count'>{{ $products->total() }}</span> Products Found</h3>
        <div class="products my-5">
            @foreach ($products as $product)

                @include('product.single_product')

            @endforeach
            {{ $products->appends(['query' => request('query')])->render() }}
        </div>
    </div>
    {{-- <div class="container">


        <h2> {{ $categoryName ?? null }} Products</h2>

        <h2>Search Products</h2>
        <div class="products">

            @foreach ($products as $product)



                @include('product.single_product')

                <p> {{ $product->name }} </p>
                <p>
                    <span>
                        {{ $products->total() }}
                    </span>
                </p>

            @endforeach
            {{ $products->appends(['query' => request('query')])->render() }}

        </div>

    </div> --}}

@endsection
