<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DeseoController;
use App\models\Deseo;


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

Route::get('/', function () {
    $deseos = Deseo::ALL(); 
    return view('main', ['Deseos'=> $deseos]);
});

Route::middleware(['auth:sanctum', 'verified', ])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');


// Route::group(['middleware' => ['auth'], 'prefix'=>'admin'], function(){

//     Route::resource();
// });

// Route::group(['middleware' => ['auth'], 'prefix'=>'user'], function(){


// });
Route::resource('deseo',DeseoController::class);

