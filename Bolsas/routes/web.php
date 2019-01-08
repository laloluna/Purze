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
Route::get('admin', 'HomeController@admin')->name('admin');
Route::post('admin/colors/create', 'HomeController@colors')->name('admin.colors.create');
Route::post('admin/types/create', 'HomeController@types')->name('admin.types.create');
Route::post('admin/brands/create', 'HomeController@brands')->name('admin.brands.create');

Route::get('items/form', 'ItemController@form')->name('items.form');
Route::get('items/show/{current}', 'ItemController@show')->name('items.show');
Route::post('items/create', 'ItemController@create')->name('items.create');
Route::post('items/confirm', 'ItemController@confirm')->name('items.confirm');
Route::post('items/price/update', 'ItemController@update')->name('items.price.update');

Route::get('sells', 'SellController@index')->name('sells');
Route::get('sells/delete/{current}', 'SellController@delete')->name('sells.delete');
Route::get('sells/form/{current}', 'SellController@form')->name('sells.form');
Route::get('sells/form_update/{current}', 'SellController@form_update')->name('sells.form_update');
Route::post('sells/create', 'SellController@create')->name('sells.create');
Route::post('sells/update', 'SellController@update')->name('sells.update');

Route::get('clients', 'ClientController@index')->name('clients');
Route::get('clients/form', 'ClientController@form')->name('clients.form');
Route::get('clients/show/{current}', 'ClientController@show')->name('clients.show');
Route::post('clients/create', 'ClientController@create')->name('clients.create');

Route::get('payment/form/{current}', 'PaymentController@form')->name('payments.form');
Route::post('payment/create', 'PaymentController@create')->name('payments.create');

Route::group(['middleware'=>'auth'], function(){
    Route::get('logout', function(){
        Auth::logout();
        return redirect()->route('home');
    })->name('logout');
});