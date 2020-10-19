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

    <form action="{{ route('cart.coupon') }}" method="get">
        <div class="coupon form-inline ">
            <input id="coupon_code" class="input-text form-control" name="coupon_code" value=""
                placeholder="Coupon code" type="text">
            <input class="button btn btn-primary" name="apply_coupon" value="Apply coupon" type="submit">
        </div>
    </form>


    <div class="row">
        <div class="col-md-5 ml-auto">
            <div class="cart-page-total">
                <div class="card p-4">
                    <h2 class="mt-3">Cart totals</h2>
                    <ul>
                        <li class="h5  text-success">SubTotal: <span>{{ \Cart::session(auth()->id())->getSubTotal() }}
                                BDT</span></li>
                        <li class="h5  text-success">Total: <span>{{ \Cart::session(auth()->id())->getTotal() }}
                                BDT</span></li>
                    </ul>
                </div>
                @php
                $items = \Cart::session(auth()->id())->getContent();
                $wallet = 0.0;
                $reward = 0;
                foreach ($items as $item) {
                $wallet = $wallet + $item['price']*$item['quantity']*$item['associatedModel']['cash_back_percent']/100;
                $reward = $reward + $item['associatedModel']['reward_point'];
                }
                @endphp
                <div class="card p-4 my-3">
                    <h2 class="mt-4">
                        Ammount To be Added to Wallet
                    </h2>
                    <p class="h5 mt-3 text-success">{{ $wallet }} BDT</p>
                </div>
                <div class="card p-4 my-3">
                    <h2 class="mt-4">
                        Reward Points
                    </h2>
                    <p class="h5 mt-3 text-success">{{ $reward }}</p>
                </div>
                <a href="{{ route('cart.checkout') }}" class="btn btn-success my-3">Proceed to checkout</a>
            </div>
        </div>
    </div>

</div>
