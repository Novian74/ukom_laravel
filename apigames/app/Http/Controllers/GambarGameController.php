<?php

namespace App\Http\Controllers;

use App\Models\GambarGame;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class GambarGameController extends Controller
{
  function store(Request $request)
  {
    $image2 = $request->file('game_preview1');
    $image2->storeAs('public/games', $image2->hashName());

    $image3 = $request->file('game_preview2');
    $image3->storeAs('public/games', $image3->hashName());

    $image4 = $request->file('game_preview3');
    $image4->storeAs('public/games', $image4->hashName());

    GambarGame::create([
      'idgame' => $request->input('idgame'),
      'game_preview1' => $image2->hashName(),
      'game_preview2' => $image3->hashName(),
      'game_preview3' => $image4->hashName(),
    ]);

    return response()->json('baba');
  }

  function update(Request $request, $idgame)
  {
    $preview = GambarGame::where('idgame', $idgame)->first();

    // Update gambar 1
    if ($request->hasFile('game_preview1')) {
      $image1 = $request->file('game_preview1');
      $image1->storeAs('public/games', $image1->hashName());

      Storage::delete('public/games/' . $preview->game_preview1);

      GambarGame::where('idgame', $idgame)->update([
        'game_preview1' => $image1->hashName()
      ]);
    }

    // Update gambar 2
    if ($request->hasFile('game_preview2')) {
      $image2 = $request->file('game_preview2');
      $image2->storeAs('public/games', $image2->hashName());

      Storage::delete('public/games/' . $preview->game_preview2);

      GambarGame::where('idgame', $idgame)->update([
        'game_preview2' => $image2->hashName()
      ]);
    }

    // Update gambar 3
    if ($request->hasFile('game_preview3')) {
      $image3 = $request->file('game_preview3');
      $image3->storeAs('public/games', $image3->hashName());

      Storage::delete('public/games/' . $preview->game_preview3);

      GambarGame::where('idgame', $idgame)->update([
        'game_preview3' => $image3->hashName()
      ]);
    }

    return response("Berhasil ubah gambar");
  }
}
