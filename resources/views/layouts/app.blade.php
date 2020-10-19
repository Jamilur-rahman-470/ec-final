<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
        integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
        crossorigin="anonymous" />

    <!-- Styles -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
    @livewireStyles
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

</head>

<body>
    <div id="app">
        <x-nav-bar />
        {{-- <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('shops.create') }}">Open a Shop</a>
                        </li>
                    </ul>


                    <div class="categories-search-wrapper">
                        <div class="all-categories">
                            <div class="select-wrapper">
                                <select class="select">
                                    <option value="">All Categories</option>
                                    <option value="">Smartphones </option>
                                    <option value="">Computers</option>
                                    <option value="">Laptops </option>
                                    <option value="">Camerea </option>
                                    <option value="">Watches</option>
                                    <option value="">Lights </option>
                                    <option value="">Air conditioner</option>
                                </select>
                            </div>
                        </div>
                        <div class="categories-wrapper">
                            <form action="{{ route('products.search') }}" method="GET">
                                <input name="query" placeholder="Enter Your key word" type="text">
                                <button type="submit"> Search </button>
                            </form>
                        </div>
                    </div>




                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item">
                            <a class="nav-link p-0 m-0" href="{{ route('wishlists.index') }}">
                                Wishlist
                            </a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link p-0 m-0" href="{{ route('cart.index') }}">
                                <i class="fas fa-cart-arrow-down text-primary fa-2x"></i>
                                Cart

                                <div class="badge badge-danger">

                                    @auth
                                        {{ Cart::session(auth()->id())->getContent()->count() }}
                                    @endauth

                                </div>

                            </a>
                        </li>



                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav> --}}

        @if (session()->has('message'))

            <div class="alert alert-success" role="alert">
                {{ session('message') }}
            </div>

        @endif

        @if (session()->has('error'))

            <div class="alert alert-danger" role="alert">
                {{ session('error') }}
            </div>

        @endif

        <main>
            @yield('content')
        </main>

    </div>


    @livewireScripts
    <x-footer />
</body>

</html>
