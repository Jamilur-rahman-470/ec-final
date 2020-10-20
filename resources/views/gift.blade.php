@extends('layouts.app')

@section('content')
    <div class="container my-4">

        <h2 class="w-100 text-center my-3">Gift Cards</h2>  
        <div class="gift-cards my-3">
            @foreach ($gift_cards as $item)
                <div class="card p-3">
                    <i data-feather='gift'></i>
                    <div class="info">
                        <p class="h4">{{ $item->name }}</p>
                        <p class="h4 text-success">{{ $item->amount }}</p>
                        <form action="{{ route('gift-cards.store') }}" class="my-3" method="POST">
                            @csrf
                            <input type="hidden" name="uid" value="{{ $item->uid }}" />
                            <input type="hidden" name="card_id" value="{{ $item->id }}" />
                            <input type="hidden" name="amount" value="{{ $item->amount }}" />
                            <button type="submit" class="btn btn-danger my-2">Purchase</button>
                        </form>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="reward-products my-3">
            <div class="header">
                <h2 class="my-3 text-center">Purchase With Reward Points</h2>
            </div>
            <div class="cards">
                @foreach ($prod_reward as $product)
                    @include('product.single_product')
                @endforeach
            </div>
        </div>
        <div class="reward-products my-3">
            <div class="header">
                <h2 class="my-3 text-center">Get cash back on</h2>
            </div>
            <div class="cards my-2">
                @foreach ($prod_cash as $product)
                    @include('product.single_product')
                @endforeach
            </div>
        </div>
    </div>
@endsection
