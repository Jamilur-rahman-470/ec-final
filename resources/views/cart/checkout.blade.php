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

            <h4>Payment Option</h4>

            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="payment_method" id="" value="cash_on_delivery">
                    Cash On Delivery
                </label>
            </div>

            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="payment_method" id="" value="bkash">
                    BKash
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="payment_method" id="" value="wallet">
                    Use Wallet
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="payment_method" id="" value="reward_point">
                    Use Reward Point
                </label>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Place Order</button>

        </form>

    </div>
@endsection
