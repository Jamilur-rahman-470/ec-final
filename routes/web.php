<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::redirect('/', '/home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/add-to-cart/{product}', 'CartController@add')->name('cart.add')->middleware('auth');

Route::get('/cart', 'CartController@index')->name('cart.index')->middleware('auth');

Route::get('/cart/delete/{itemId}', 'CartController@delete')->name('cart.destroy');

Route::get('/cart/update/{itemId}', 'CartController@update')->name('cart.update');

Route::get('/cart/checkout', 'CartController@checkout')->name('cart.checkout');

Route::get('/cart/apply-coupon', 'CartController@applyCoupon')->name('cart.coupon')->middleware('auth');

Route::resource('orders', 'OrderController')->middleware('auth');

Route::resource('shops', 'ShopController')->middleware('auth');

Route::resource('wishlists', 'WishlistController')->middleware('auth');

Route::get('/products/search', 'ProductController@search')->name('products.search');

Route::resource('products', 'ProductController');
Route::get('/product/{prodId}', 'ProductSinglePage@index')->name('prod.single');
Route::group(['prefix' => 'admin'], function () {

    Voyager::routes();

    Route::get('/order/pay/{suborder}', 'SubOrderController@pay')->name('order.pay');
});


Route::group(['prefix' => 'seller', 'middleware' => 'auth', 'as' => 'seller.', 'namespace' => 'Seller'], function () {

    Route::redirect('/', 'seller/orders');

    Route::resource('/orders',  'OrderController');

    Route::get('/orders/delivered/{suborder}',  'OrderController@markDelivered')->name('order.delivered');
});

Route::get('/user/dashboard', 'DhashboardController@index')->name('dash')->middleware('auth');
Route::get('/gifts', 'GiftPageController@index')->name('gift');
Route::resource('gift-cards', 'GiftCardPurchaseController')->middleware('auth');
