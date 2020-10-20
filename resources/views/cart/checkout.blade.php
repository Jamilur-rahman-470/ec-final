@extends('layouts.app')

@section('content')
    <div class="container my-3">

        <h2 class="text-center">Your Checkout</h2>

        <h3 class="text-center mb-5">Shipping Information</h3>

        <form action="{{ route('orders.store') }}" method="POST" class="w-75 mx-auto">

            @csrf

            <div class="form-group">
                <label for="">Full Name</label>
                <input type="text" name="shipping_fullname" id="" class="form-control">
            </div>

            <div class="form-group">
                <label for="">State</label>
                <input type="text" name="shipping_state" id="" class="form-control">
            </div>

            <div class="form-group">
                <label for="">City</label>
                <input type="text" name="shipping_city" id="" class="form-control">
            </div>

            <div class="form-group">
                <label for="">Zip</label>
                <input type="text" name="shipping_zipcode" id="" class="form-control">
            </div>

            <div class="form-group">
                <label for="">Full Address</label>
                <input type="text" name="shipping_address" id="" class="form-control">
            </div>

            <div class="form-group">
                <label for="">Mobile</label>
                <input type="text" name="shipping_phone" id="" class="form-control">
            </div>
            <div class="form-group display-none" id="gift-code">
                <label for="">Gift Card Code</label>
                <input type="text" name="uid" id="gift-code" class="form-control">
            </div>

            <h4>Payment Option</h4>
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-outline-primary btn-toggle active">
                    <input id="gift-card-method" type="radio" class="form-check-input" name="payment_method" id="" value="cash_on_delivery"
                        checked> Cash On Delivery
                </label>
                <label class="btn btn-outline-primary btn-toggle">
                    <input id="gift-card-method" type="radio" class="form-check-input" name="payment_method" id="" value="bkash"> Bkash
                </label>
                <label class="btn btn-outline-primary btn-toggle">
                    <input id="gift-card-method" input type="radio" class="form-check-input" name="payment_method" id="" value="wallet"> Wallet
                </label>
                <label class="btn btn-outline-primary btn-toggle">
                    <input id="gift-card-method" type="radio" class="form-check-input" name="payment_method" id="" value="reward_point"> Reward
                    Point
                </label>
                <label class="btn btn-outline-primary btn-toggle">
                    <input id="gift-card-method" type="radio" class="form-check-input" name="payment_method" 
                        value="gift_card"> Gift Card
                </label>
            </div><br>
            <button type="submit" class="btn btn-primary mt-3">Place Order</button>
        </form>

    </div>
@endsection
