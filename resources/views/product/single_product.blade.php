<div class="product-card">
    <div class="img">
        <img src="{{ asset('storage/' . $product->cover_img) }}" alt="{{ $product->name }}">
    </div>
    <div class="body px-3 py-3">
        <small class="mt-1 badge badge-danger">Featured</small>
        <h2 class="name mb-3">{{ $product->name }} </h2>
        <p class="price mt-3">Get @ BDT {{ $product->price }}/-</p>
        <p class="price mt-2">GET Back {{ $product->cash_back_percent }}%</p>
    </div>
    <div class="btns">
        <form action="{{ route('wishlists.store') }}" method="post">
            @csrf
            <input type="hidden" name="pid" value="{{ $product->id }}" />
            <button type="submit" class="btn btn-secondary"><i data-feather='heart'></i></button>

        </form>
        <a href="{{ route('cart.add', $product->id) }}" class="btn btn-secondary cart"><i
                data-feather="shopping-cart"></i></a>
    </div>
</div>
{{-- <div class="product-card">
    <div class="card">
        <img class="card-img-top" src="{{ asset('product.png') }}" alt="Card image cap">
        <div class="card-body">
            <h4 class="card-title">{{ $product->name }}</h4>


            <p class="card-text">{{ $product->description }}</p>
            <h3 class="card-text">$ {{ $product->price }}</h3>

        </div>
        <div class="card-body">
            <a href="{{ route('cart.add', $product->id) }}" class="card-link">Add to Cart</a>

            <form action="{{ route('wishlists.store') }}" method="post">
                @csrf
                <input type="hidden" name="pid" value="{{ $product->id }}" />
                <button type="submit" class="btn btn-primary">Wishlist</button>

            </form>

        </div>
    </div>
</div>
--}}

{{-- <a href="{{ route('wishlists.store') }}" class="card-link">
    wishlist
</a> --}}
