@extends('layouts.app')

@section('content')
    <div class="product-single-page container my-3">
        <div class="prod-info">
            <div class="img">
                <img src="{{ asset('storage/' . $product->cover_img) }}" alt="{{ $product->name }}" width='400'>
            </div>
            <div class="content">
                <h2 class="my-3">{{ $product->name }}</h2>
                <h4 class="text-danger">BDT {{ $product->price }}</h4>
                <br>
                @if ($product->reward_point)
                    <h5>Reward Point - {{ $product->reward_point }}</h5>
                @endif
                @if ($product->cash_back_percent > 0)
                    <h5>Get {{ $product->cash_back_percent }} % Cash Back</h5>
                @endif
                <div class="btns my-3">
                    <form action="{{ route('wishlists.store') }}" method="post">
                        @csrf
                        <input type="hidden" name="pid" value="{{ $product->id }}" />
                        <button type="submit" class="btn btn-success btn-md">ADD TO WISHLIST</button>

                    </form>
                    <a href="{{ route('cart.add', $product->id) }}" class="btn btn-danger btn-md">ADD TO CART</a>
                </div>
                <p class="text-danger my-2">{{ $product->description }}</p>
            </div>
        </div>
    </div>
@endsection
