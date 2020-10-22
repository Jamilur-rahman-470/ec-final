@extends('layouts.app')

@section('content')

    <div class="products-shop my-2">
        <div class="sidebar mx-2 card p-3" style="border-radius: 20px">
            <div class="filters">
                <h4>Filters</h4>
                <br>
                @php
                $categories = TCG\Voyager\Models\Category::where('parent_id', null)->get();
                @endphp
                @foreach ($categories as $item)
                <a href="{{ route('products.index', ['category_id' => $item->id]) }}"
                    class="btn btn-primary btn-sm w-100 rounded my-2">{{ $item->name }}</a>
                @endforeach
            </div>
        </div>
        <div class="container">
            <div class="shop-search w-100 mb-3 flex-row align-items-center justify-content-between card rounded p-4">
                <h4>Search</h4>
                <form class="form-inline my-2 my-lg-0" action="{{ route('products.search') }}" method="GET">
                    <input class="form-control " type="text" placeholder="What are you looking for?" id='search'
                        name="query">
                    <button class="btn btn-primary my-2 my-sm-0" type="submit" id='search-btn'>Search</button>
                </form>
            </div>
            
            <div class="products">

                @foreach ($products as $product)
                    @include('product.single_product')

                @endforeach

            </div>

        </div>
    </div>

@endsection
