<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Item;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = Item::all()->where('sold', 0);
        return view('home', compact('items'));
    }
}
