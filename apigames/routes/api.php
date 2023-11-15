<?php

use App\Http\Controllers\AboutGameController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\GambarGameController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\MasterGameController;
use App\Http\Controllers\ReplyCommentController;
use App\Http\Controllers\SpekGameController;
use App\Models\AboutGame;
use App\Models\Comment;
use App\Models\ReplyComment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
  return $request->user();
});

Route::post('/register', App\Http\Controllers\Api\RegisterController::class)->name('register');
Route::post('/login', App\Http\Controllers\Api\LoginController::class)->name('login');
Route::post('/loginuser', App\Http\Controllers\Api\LoginUserController::class)->name('loginuser');
Route::post('/logout', App\Http\Controllers\Api\LogoutController::class)->name('logout');
Route::post('/otp', [UserController::class, 'sendForgotOtp']);
Route::post('/otpverify', [UserController::class, 'forgotVerifyOtp']);
Route::post('/otpregister', [UserController::class, 'sendRegisterOtp']);
Route::post('/resendotpregister', [UserController::class, 'resendRegisterOtp']);
Route::post('/otpverifyregister', [UserController::class, 'RegisterVerifyOtp']);
Route::delete('user/{id}', [UserController::class, 'destroy']);



Route::get('game', [MasterGameController::class, 'index']);
Route::delete('game/{idgame}', [MasterGameController::class, 'deleteGame']);
Route::get('game/random/atas', [MasterGameController::class, 'randomGame']);
Route::get('game/random/bawah', [MasterGameController::class, 'randomGame2']);
Route::get('game/card/{status}', [MasterGameController::class, 'card']);
Route::get('game/kategori/{idkategori}', [MasterGameController::class, 'cariKategori']);
Route::get('game/{idgame}', [MasterGameController::class, 'show']);
Route::get('gambar/{idgame}', [MasterGameController::class, 'image']);
Route::get('about/{idgame}', [MasterGameController::class, 'about']);
Route::get('komen/{idgame}', [MasterGameController::class, 'komen']);
Route::get('komen/hitung/{idgame}', [MasterGameController::class, 'hitungKomentar']);
Route::get('komen/rate/{idgame}', [MasterGameController::class, 'hitungRate']);
Route::get('replykomen/{idkomen}/{idgame}', [MasterGameController::class, 'replyKomen']);
Route::get('kategori', [KategoriController::class, 'index']);
Route::get('history/{iduser}', [CommentController::class, 'history']);
Route::get('kategori/{idkategori}', [KategoriController::class, 'namaKategori']);
Route::post('game/store', [MasterGameController::class, 'masSpekStore']);
Route::post('gamepreview/store', [GambarGameController::class, 'store']);
Route::post('about/store', [AboutGameController::class, 'store']);
Route::post('komen/store', [MasterGameController::class, 'komenStore']);
Route::post('kategori/store', [KategoriController::class, 'store']);
Route::put('game/update/{idgame}', [MasterGameController::class, 'masSpekUpdate']);
Route::put('game/about/update/{id}', [AboutGameController::class, 'update']);
Route::put('game/gambar/update/{idgame}', [GambarGameController::class, 'update']);
Route::put('komen/upload/{id}', [CommentController::class, 'update']);
Route::put('kategori/update/{idkategori}', [KategoriController::class, 'update']);
Route::delete('komen/{id}', [CommentController::class, 'delete']);
Route::delete('kategori/{id}', [KategoriController::class, 'destroy']);

Route::get('komen', [CommentController::class, 'index']);
Route::get('indexuser', [UserController::class, 'index']);






Route::get('admin', [AdminController::class, 'index']);
Route::get('spek', [SpekGameController::class, 'index']);
