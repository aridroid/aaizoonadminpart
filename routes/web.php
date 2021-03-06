<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\CKEditorController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/admin',function() {

return view('auth.login');

});

Route::get('/profile', function () {
    return view('auth.profile');

})->middleware('auth');

Route::get('/pat', function () {
    return view('auth.patient');

})->middleware('auth');

Route::get('/doc', function () {
    return view('auth.doctor');

})->middleware('auth');

Route::get('/nur', function () {
    return view('auth.nurse');

})->middleware('auth');

Route::get('/video', function () {
    return view('auth.video');

})->middleware('auth');

Route::get('/uploadbanner', function () {
    return view('auth.banner');

})->middleware('auth');


Route::post('/link',[App\Http\Controllers\Auth\LoginController::class, 'video'])->name('video.save');
Route::post('/upload',[App\Http\Controllers\Auth\LoginController::class, 'uploadbanner'])->name('image.save');
Route::get('/showvideo',[App\Http\Controllers\Auth\LoginController::class, 'showvideo']);
Route::get('/showbanner',[App\Http\Controllers\Auth\LoginController::class, 'showbanner']);

// This is a route for insert data 
// Route::get('/insert',[App\Http\Controllers\Auth\LoginController::class, 'insert']);
Route::get('/login/admin',[App\Http\Controllers\Auth\LoginController::class, 'index']);
Route::post('/processlogin',[App\Http\Controllers\Auth\LoginController::class, 'processlogin']);
Route::get('/login/admin',[App\Http\Controllers\Auth\LoginController::class, 'index']);
Route::get('/pat_list',[App\Http\Controllers\Auth\LoginController::class, 'pat_list']);
Route::get('/doc_list',[App\Http\Controllers\Auth\LoginController::class, 'doc_list']);
Route::get('/gnm_list',[App\Http\Controllers\Auth\LoginController::class, 'gnm_list']);

Route::get('/logout',[App\Http\Controllers\Auth\LoginController::class, 'logout']);
Route::get('/doctor_verify',[App\Http\Controllers\Auth\LoginController::class, 'image_view']);
Route::DELETE('/pat_del/{id}',[App\Http\Controllers\Auth\LoginController::class, 'pat_del'])->name('patient.destroy');
Route::DELETE('/doc_del/{id}',[App\Http\Controllers\Auth\LoginController::class, 'doc_del'])->name('doctor.destroy');
Route::DELETE('/nurse_del/{id}',[App\Http\Controllers\Auth\LoginController::class, 'nur_del'])->name('nurse.destroy');
// Route::DELETE('/doc_appr/{id}',[App\Http\Controllers\Auth\LoginController::class, 'doc_appr'])->name('doctor.approve');
Route::DELETE('/doc_appr',[App\Http\Controllers\Auth\LoginController::class, 'doc_appr'])->name('doctor.approve');
Auth::routes();

    // Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
