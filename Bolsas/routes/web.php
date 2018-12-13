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

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index')->name('home');
Route::get('purchases', 'HomeController@purchases')->name('purchases');
Route::get('create', 'ItemController@create')->name('create');
Route::post('confirm', 'ItemController@confirm')->name('confirm');
Route::post('final', 'ItemController@final')->name('final');

Route::group(['middleware'=>'auth'], function(){
    

    Route::get('logout', function(){
        Auth::logout();
        return redirect()->route('home');
    })->name('logout');
});