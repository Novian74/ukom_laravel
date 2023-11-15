<?php

namespace App\Http\Controllers;

use App\Models\AboutGame;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AboutGameController extends Controller
{
  function index()
  {
    return AboutGame::all();
  }

  function store(Request $request)
  {
    $image = $request->file('gambar');
    $image->storeAs('public/about', $image->hashName());

    AboutGame::create([
      'idgame' => $request->input('idgame'),
      'gambar' => $image->hashName(),
      'judul' => $request->input('judul'),
      'penjelasan' => $request->input('penjelasan'),
      'info' => $request->input('info')
    ]);

    return response()->json('bb');
  }

  function update(Request $request, $id)
  {
    $validatedData = $request->validate([
      'judul' => 'required',
      'penjelasan' => 'required',
      'info' => 'required'
    ]);

    $about = AboutGame::find($id);

    if ($request->hasFile('gambar')) {
      $gambar = $request->file('gambar');
      $gambar->storeAs('public/about', $gambar->hashName());

      Storage::delete('public/about/' . $about->image);

      $about->update([
        'gambar' => $gambar->hashName(),
        'judul' => $validatedData['judul'],
        'penjelasan' => $validatedData['penjelasan'],
        'info' => $validatedData['info'],
      ]);
    } else {
      $about->update([
        'judul' => $validatedData['judul'],
        'penjelasan' => $validatedData['penjelasan'],
        'info' => $validatedData['info'],
      ]);
    }
    return response("berhasil ubah");
  }
}
