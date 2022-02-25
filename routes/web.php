<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DeseoController;
use App\Http\Controllers\MisVotadosController;
use App\Http\Controllers\HomeController;

use App\models\Deseo;
use App\Http\Livewire\Deseos;


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
 $deseos=Deseo::InRandomOrder()->limit(21)->get();
    return view('main', ['Deseos'=> $deseos]);
})->name('home');


Route::resource('deseo',DeseoController::class);

Route::resource('votados',MisVotadosController::class);

Route::middleware(['auth:sanctum','verified'])->get('/dashboard', function(){

    return view('dashboard');
})->name('dashboard');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('/estadisticas',[HomeController::class, 'index']);
