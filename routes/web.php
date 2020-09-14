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

/* Route::get('/', function () {
    return view('welcome');
});
 */
Route::get('/', 'MainController@index')->name('home');
Route::get('/contacts', 'MainController@contacts');
Route::post('/contacts', 'MainController@getContacts');
Route::get('/category/{slug}', 'ShopController@category');

Auth::routes();

// Routes group admin
Route::group([
    'prefix' => '/admin',
    'namespace' => 'Admin',
    'middleware' => ['auth', 'admin'],
], function(){
    Route::get('/', 'AdminController@index');
    Route::resource('category', 'CategoryController');

});


