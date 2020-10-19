@extends('layouts.app')

@section('content')
    <div class="container my-5">
        <h2 class="my-2">Welcome Back to Echem</h2>
        <div class="dash-info-cards my-4">
            <div class="card p-3 mr-3">
                <h2>Wallet Balance</h2>
                <p class="h4 text-success my-2">{{ $wallet[0]->amount }} BDT</p>
            </div>
            <div class="card p-3 mr-3">
                <h2>Amount Spent</h2>
                <p class="h4 text-danger my-2">{{ $wallet[0]->amount_spend }} BDT</p>
            </div>
            <div class="card p-3 mr-3">
                <h2>Reward Points</h2>
                <p class="h4 text-success my-2">{{ $reward[0]->point }}</p>
            </div>
            <div class="card p-3 mr-3">
                <h2>Pending Orders</h2>
                @php
                $count = 0;
                foreach ($orders as $order) {
                # code...
                if($order->status !== 'completed' and $order->status !== 'decline'){
                $count = $count + 1;
                }
                }
                @endphp
                <p class="h4 text-success my-2">{{ $count }}</p>
            </div>
        </div>
        <div class="orders my-4">
            <h2 class="my-2">Pending Orders</h2>
            <div class="cards">
                @foreach ($orders as $order)
                    @if ($order->status !== 'completed' and $order->status !== 'decline')
                        <div class="card mr-2 my-2 p-3">
                            <p class="h4">{{ $order->order_number }}</p>
                            <p class="h5 my-2">{{ $order->status }}</p>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
        <div class="orders my-4">
            <h2 class="my-2">Completed Orders</h2>
            <div class="cards">
                @foreach ($orders as $order)
                    @if ($order->status === 'completed' or $order->status === 'decline')
                        <div class="card mr-2 my-2 p-3">
                            <p class="h4">{{ $order->order_number }}</p>
                            <p class="h5 my-2">{{ $order->status }}</p>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
@endsection
