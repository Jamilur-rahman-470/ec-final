<section class="large-banner container mt-5">
    <div class="one">
        <div class="img"><img src="{{ asset('images/pattern-1.png') }}" alt=""></div>
        <div class="overlay"></div>
        <div class="info">
            <div class="title">ECHEM - SHOP</div>
            <div class="des">Get the what you need at price you can't imagine</div>
            <br>
        <a href="{{url('/products')}}" class="btn btn-secondary" id=custom>SHOP <span data-feather="arrow-right-circle" id='one'></span></a>
        </div>
    </div>
    <div class="two">
        <div class="seller">
            <div class="img"><img src="{{ asset('images/pattern-3.png') }}" alt=""></div>
            <div class="overlay"></div>
            <div class="info">
                <div class="title">ECHEM - SHOPS</div>
                <div class="des">SIGN UP AS A SELLER AND SELL YOU OWN PRODUCT</div>
                <br>
                <a href="{{ route('shops.create') }}" class="btn btn-secondary" id=custom>SIGNUP <span id='two' data-feather="arrow-right-circle"></span></a>
            </div>
        </div>
        <div class="blog">
            <div class="img"><img src="{{ asset('images/pattern-2.png') }}" alt=""></div>
            <div class="overlay"></div>
            <div class="info">
                <div class="title">ECHEM - BLOG</div>
                <div class="des">LEARN More about our site and what we are offering</div>
                <br>
                <a href="{{ url('/') }}" class="btn btn-secondary" id=custom>LAERN <span id='three' data-feather="arrow-right-circle"></span></a>
            </div>
        </div>
    </div>
</section>
