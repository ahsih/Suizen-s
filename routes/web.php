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

// HomePage
    Route::get('/', 'HomeController@index');
    Route::get('/home', 'HomeController@index');
    Route::get('/menu','MenuController@index');
    Route::get('/contact','ContactController@index');
    Route::get('/gallery','GalleryController@index');
    Route::get('/combo','ComboMealController@index');