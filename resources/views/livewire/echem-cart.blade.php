<div class="container">
    {{-- The best athlete wants his opponent at his best. --}}

    {{-- <h2>New Cart</h2> --}}

    <h2>Your Cart</h2>

    <table class="table">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Cash Back</th>
                <th scope="col">Reward Point</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($cartItems as $item)
                <tr>
                    <td scope="row">{{ $item['name'] }}</td>
                    <td>
                        {{ $item['price'] }}
                        {{--
                        {{ Cart::session(auth()->id())->get($item->id)->getPriceSum() }}
                        --}}
                    </td>
                    <td>

                        <livewire:cart-update-form :item="$item" :key="$item['id']" />

                    </td>
                    <td>{{ $item['associatedModel']['cash_back_percent'] }} %</td>
                    <td>{{ $item['associatedModel']['reward_point'] }}</td>
                    <td>
                        <a href="{{ route('cart.destroy', $item['id']) }}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h3>
        Total Price: <span class="text-success">{{ \Cart::session(auth()->id())->getTotal() }}</span> BDT
    </h3>


    <br>
    <br>

    <div class="reward-forms">
        <form action="{{ route('cart.coupon') }}" method="get">
            <h4>Have A Cupon?</h4>
            <div class="coupon form-inline ">
                <input id="coupon_code" class="input-text form-control" name="coupon_code" value=""
                    placeholder="Coupon code" type="text">
                <input class="button btn btn-primary" name="apply_coupon" value="Apply coupon" type="submit">
            </div>
        </form>
        <a href="{{ route('cart.checkout') }}" class="btn btn-success my-3">Proceed to checkout</a>
    </div>
    <div class="row">
        <div class='my-5'>
            <div class="cart-page-total">
                @php
                $items = \Cart::session(auth()->id())->getContent();
                $wallet = 0.0;
                $reward = 0;
                foreach ($items as $item) {
                $wallet = $wallet + $item['price']*$item['quantity']*$item['associatedModel']['cash_back_percent']/100;
                $reward = $reward + $item['associatedModel']['reward_point'];
                }
                @endphp
                <h3>Rewards Earned</h3>
                <div class="card p-4">
                    <h4>
                        Ammount To be Added to Wallet
                    </h4>
                    <p class="h4 text-success">{{ $wallet }} BDT</p>
                </div>
                <div class="card p-4">
                    <h4>
                        Reward Points
                    </h4>
                    <p class="h4 text-success">{{ $reward }}</p>
                </div>
            </div>
        </div>
    </div>

</div>
