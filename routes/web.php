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





Route::get('/','admin\adminController@login');
Route::get('/logout','admin\adminController@logout');
Route::get('/customerlogin','admin\adminController@customerlog');

Route::get('/dashboard','admin\adminController@admin');
Route::get('/customer','admin\adminController@customer');

Route::get('/slider','admin\mainController@slider');
Route::post('/slider/store','admin\mainController@slider_store');
Route::get('/slider/edit/{id}','admin\mainController@slider_edit');
Route::post('/slider/update','admin\mainController@slider_update');

Route::get('/category','admin\mainController@category');
Route::post('/category/store','admin\mainController@category_store');
Route::get('/category/edit/{id}','admin\mainController@category_edit');
Route::post('/category/update','admin\mainController@category_update');

Route::get('/product','admin\mainController@product');
Route::post('/product/store','admin\mainController@product_store');
Route::get('/product/edit/{id}','admin\mainController@product_edit');
Route::post('/product/update','admin\mainController@product_update');

Route::get('/package','admin\mainController@package');
Route::post('/package/store','admin\mainController@package_store');
Route::get('/package/edit/{id}','admin\mainController@package_edit');
Route::post('/package/update','admin\mainController@package_update');


Route::get('/pending','admin\ManageController@pending');
Route::get('/pending/edit/{id}','admin\ManageController@pending_edit');
Route::post('/pending/update','admin\ManageController@pending_update');
Route::get('/order/view/{id}','admin\ManageController@pending_view');

