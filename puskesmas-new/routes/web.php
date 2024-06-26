<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\KelurahanController;
use App\Http\Controllers\PasienController;

Route::get('/', function () {
    return view('welcome');
});

Route::get ('/beranda', function() {
      return "Halaman Beranda";
});

Route::get ('/salam', function() {
    return "selamat datang Risty di Laravel ll";
});

Route::get ('/profile', function() {
    return "Halaman profile";
});


// pratikum Laravel 2
Route::get('/dashboard',[AdminController::class,'index']);
Route::get('/contact',[ContactController::class,'index']);
Route::get('/about',[AboutController::class,'index']);

// praktikum Laravel 3
Route::get('/dashboard/kelurahan', [KelurahanController::class, 'index']);
Route::get('/dashboard/pasien', [PasienController::class, 'index']);

// praktikum Laravel 4
Route::get('/dashboard/kelurahan/create', [KelurahanController::class, 'create']);
Route::post('/dashboard/kelurahan/create/store', [KelurahanController::class, 'store']);
Route::post('/dashboard/kelurahan/show/{id}', [KelurahanController::class, 'show']);

