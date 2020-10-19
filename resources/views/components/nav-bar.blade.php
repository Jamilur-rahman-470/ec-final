 <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
     <div id="logo"></div>
     <div class="navbar-toggler-right">
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar"
             aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
             <i data-feather='menu'></i>
         </button>
     </div>
     <div class="collapse navbar-collapse flex-column " id="navbar">

         <ul class="navbar-nav  w-100 flex-row align-items-center justify-content-between px-3" id='fix-nav'>
             <div id="desk-logo"><a href="{{ url('/') }}" class="navbar-brand">
                     <img src="{{ asset('images/logo.jpeg') }}" width='100' alt="">
                 </a></div>
             <form class="form-inline my-2 my-lg-0" action="{{ route('products.search') }}" method="GET">
                 <input class="form-control " type="text" placeholder="What are you looking for?" id='search'
                     name="query">
                 <button class="btn btn-primary my-2 my-sm-0" type="submit" id='search-btn'>Search</button>
             </form>
             <a href="{{ url('/') }}" id="tag">#Echem</a>
             <li class="nav-item"><a href="{{ route('cart.index') }}" class="nav-link active"><i
                         data-feather="shopping-bag"></i>
                     <div class="badge badge-danger">

                         @auth
                             {{ Cart::session(auth()->id())->getContent()->count() }}
                         @endauth

                     </div>
                 </a></li>
         </ul>

         <ul class="navbar-nav  w-100 flex-row align-items-center justify-content-start px-3" id='fix-nav'>
             <li class="nav-item dropdown has-megamenu active">
                 <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> SHOP </a>
                 <div class="dropdown-menu megamenu">

                     <ul class="abc flex-row w-100 align-items-center justify-content-between" id="mega-fix-mobile">
                         <li class="flex-column align-items-center justify-content-center mx-3" id='offer'>
                             <div id="offer-card">
                                 <h3>Get Free Shipping of for + 1500 BDT Shopping</h3>
                             </div>
                             <div id="offer-card">
                                 <h3>Get 20% or more off on selected products</h3>
                             </div>
                         </li>
                         @php
                         $categories = TCG\Voyager\Models\Category::where('parent_id', null)->get();
                         @endphp
                         <li class="custom-menus">
                             @foreach ($categories as $catHead)
                                 <a href="{{ route('products.index', ['category_id' => $catHead->id]) }}"
                                     class="cat-head mb-2">{{ $catHead->name }}</a>
                                 @php
                                 $innrs = TCG\Voyager\Models\Category::where('parent_id', $catHead->id)->get();
                                 @endphp
                                 @foreach ($innrs as $innr)
                                     <a href="{{ route('products.index', ['category_id' => $innr->id]) }}"
                                         class="cat-sub">{{ $innr->name }}</a>
                                 @endforeach
                             @endforeach
                         </li>
                     </ul>

                 </div> <!-- dropdown-mega-menu.// -->
             </li>
             <li class="nav-item active">
                 <a href="{{ route('wishlists.index') }}" class="nav-link">
                     wishlist
                     <div class="badge badge-danger">

                     </div>
                 </a>
             </li>
             @guest
                 <li class="nav-item active">
                     <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                 </li>

             @else
                 <li class="nav-item dropdown">
                     <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                         aria-haspopup="true" aria-expanded="false" v-pre>
                         {{ Auth::user()->name }}
                     </a>

                     <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                         <a class="dropdown-item" href="{{ route('dash') }}">
                             Dashboard
                         </a>
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
 </nav>
