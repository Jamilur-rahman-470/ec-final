@extends('layouts.app')

@section('content')

    <div class="container">


        <h2> {{ $categoryName ?? null }} Products</h2>
        <div class="filter">
            <div class="card my-5 px-5 py-5">
                <div class="one">
                    <h4>Search by categories</h4>
                    @php
                    $categories = TCG\Voyager\Models\Category::where('parent_id', null)->get();
                    @endphp
                    <div class="links">
                        @foreach ($categories as $catHead)
                            <div class="dropdown ">
                                <a href="#" class="cat-head mb-2 badge badge-primary dropdown-toggle" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">{{ $catHead->name }}</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    @php
                                    $innrs = TCG\Voyager\Models\Category::where('parent_id', $catHead->id)->get();
                                    @endphp
                                    @foreach ($innrs as $innr)
                                        <a href="{{ route('products.index', ['category_id' => $innr->id]) }}"
                                            class="cat-sub dropdown-item">{{ $innr->name }}</a>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <div class="products">

            @foreach ($products as $product)
                @include('product.single_product')

            @endforeach

        </div>

    </div>

@endsection
