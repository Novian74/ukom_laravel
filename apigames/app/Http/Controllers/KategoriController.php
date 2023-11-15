<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class KategoriController extends Controller
{
  function index()
  {
    return Kategori::orderBy('kategori', 'asc')->get();
  }

  function namaKategori($idkategori)
  {
    return Kategori::where("idkategori", $idkategori)->select("kategori", "gambar")->get();
  }

  function store(Request $request)
  {
    $image = $request->file('gambar');
    $image->storeAs('public/poster/', $image->hashName());

    Kategori::create([
      'idkategori' => $request->input('idkategori'),
      'kategori' => $request->input('kategori'),
      'gambar' => $image->hashName()
    ]);
  }

  function update(Request $request, $idkategori)
  {
    $validatedData = $request->validate([
      'kategori' => 'required'
    ]);

    $kategori = Kategori::where("idkategori", $idkategori)->first();

    if ($request->hasFile('gambar')) {
      $image = $request->file('gambar');
      $image->storeAs('public/poster', $image->hashName());

      Storage::delete('public/poster/' . basename($kategori->gambar));

      Kategori::where('idkategori', $idkategori)->update([
        'gambar' => $image->hashName(),
        'kategori' => $validatedData['kategori']
      ]);
    } else {
      Kategori::where('idkategori', $idkategori)->update([
        'kategori' => $validatedData['kategori']
      ]);
    }

    return response("kakak");
  }

  function destroy($id)
  {
    Kategori::where('idkategori', $id)->delete();
  }
}
