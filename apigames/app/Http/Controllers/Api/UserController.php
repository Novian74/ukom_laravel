<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Mail\ResetPasswordMail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
  function index()
  {
    return User::all();
  }

  public function sendForgotOtp(Request $request)
  {
    $email = $request->input('email');

    // Cek apakah email ada dalam model User
    $user = User::where('email', $email)->first();

    if (!$user) {
      return response()->json(['message' => 'Email tidak ditemukan'], 404);
    }

    $otp = Str::random(6); // Generate a 6-digit OTP

    // Simpan OTP dalam cache dengan batasan waktu (misalnya, 5 menit)
    Cache::put('otp:' . $email, $otp, now()->addMinutes(5));

    // Kirim OTP ke pengguna melalui email
    Mail::to($user->email)->send(new ResetPasswordMail($otp)); // Anda perlu membuat template email OtpMail

    return response()->json(['message' => 'OTP telah dikirim melalui email']);
  }


  public function forgotVerifyOtp(Request $request)
  {
    $email = $request->input('email');
    $userOtp = $request->input('otp');

    // Dapatkan OTP dari cache
    $storedOtp = Cache::get('otp:' . $email);

    if ($userOtp === $storedOtp) {
      // OTP cocok, berikan akses ke pengguna
      // Lakukan pembaruan kata sandi pengguna
      $user = User::where('email', $email)->first();

      if ($user) {
        $newPassword = $request->input('new_password');
        $user->password = bcrypt($newPassword); // Menggunakan bcrypt untuk mengenkripsi kata sandi
        $user->save();
      } else {
        return response()->json(['message' => 'Pengguna tidak ditemukan'], 404);
      }

      return response()->json(['message' => 'OTP berhasil diverifikasi dan kata sandi diperbarui']);
    } else {
      // OTP tidak cocok
      return response()->json(['message' => 'OTP tidak valid'], 401);
    }
  }

  public function sendRegisterOtp(Request $request)
  {
    //set validation
    $validator = Validator::make($request->all(), [
      'name'      => 'required',
      'email'     => 'required|email|unique:users',
      'password'  => 'required|min:8',
    ]);

    //if validation fails
    if ($validator->fails()) {
      return response()->json($validator->errors(), 422);
    }

    $email = $request->input('email');

    $otp = Str::random(6); // Generate a 6-digit OTP

    // Simpan OTP dalam cache dengan batasan waktu (misalnya, 5 menit)
    Cache::put('otp:' . $email, $otp, now()->addMinutes(5));

    // Kirim OTP ke pengguna melalui email
    Mail::to($email)->send(new ResetPasswordMail($otp)); // Anda perlu membuat template email OtpMail

    return response()->json(['message' => 'OTP telah dikirim melalui email']);
  }

  public function resendRegisterOtp(Request $request)
  {
    $email = $request->input('email');

    $otp = Str::random(6); // Generate a 6-digit OTP

    // Simpan OTP dalam cache dengan batasan waktu (misalnya, 5 menit)
    Cache::put('otp:' . $email, $otp, now()->addMinutes(5));

    // Kirim OTP ke pengguna melalui email
    Mail::to($email)->send(new ResetPasswordMail($otp)); // Anda perlu membuat template email OtpMail

    return response()->json(['message' => 'OTP telah dikirim melalui email']);
  }

  public function RegisterVerifyOtp(Request $request)
  {
    $email = $request->input('email');
    $userOtp = $request->input('otp');

    // Dapatkan OTP dari cache
    $storedOtp = Cache::get('otp:' . $email);

    if ($userOtp === $storedOtp) {
      // Verifikasi OTP berhasil
      $nama = $request->input('name'); // Gantilah 'nama' dengan nama input yang sesuai
      $password = bcrypt($request->input('password')); // Hash password

      // Tambahkan pengguna baru ke dalam model User
      User::create([
        'name' => $nama,
        'email' => $email,
        'password' => $password,
        'role' => "user"
      ]);

      return response()->json(['message' => 'OTP berhasil diverifikasi dan Data berhasil diinput']);
    } else {
      // OTP tidak cocok
      return response()->json(['message' => 'OTP tidak valid'], 401);
    }
  }


  public function destroy($id)
  {
    $user = User::find($id);
    $user->delete();

    return response("Berhasil Hapus");
  }
}
