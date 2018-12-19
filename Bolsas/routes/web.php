<?php

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

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::get('home', 'HomeController@index')->name('home');

Route::get('items/form', 'ItemController@form')->name('items.form');
Route::post('items/create', 'ItemController@create')->name('items.create');
Route::post('items/confirm', 'ItemController@confirm')->name('items.confirm');

Route::get('sells', 'SellController@index')->name('sells');
Route::get('sells/form/{current}', 'SellController@form')->name('sells.form');
Route::post('sells/create', 'SellController@create')->name('sells.create');

Route::get('clients', 'ClientController@index')->name('clients');
Route::get('clients/form', 'ClientController@form')->name('clients.form');
Route::post('clients/create', 'ClientController@create')->name('clients.create');

Route::get('payment/form/{current}', 'PaymentController@form')->name('payments.form');
Route::post('payment/create', 'PaymentController@create')->name('payments.create');

Route::group(['middleware'=>'auth'], function(){
    Route::get('logout', function(){
        Auth::logout();
        return redirect()->route('home');
    })->name('logout');
});