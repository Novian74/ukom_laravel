<?php

namespace App\Http\Controllers;

use App\Models\AboutGame;
use App\Models\Comment;
use App\Models\GambarGame;
use App\Models\MasterGame;
use App\Models\SpekGame;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class MasterGameController extends Controller
{
  // Untuk All Game
  function index()
  {
    return MasterGame::join('kategoris', 'master_games.idkategori', '=', 'kategoris.idkategori')
      ->select('master_games.*', 'kategoris.kategori', 'kategoris.idkategori')
      ->orderBy('master_games.nama_game', 'asc')
      ->get();

    // return MasterGame::all();
  }

  public function card($status)
  {
    return MasterGame::join('kategoris', 'master_games.idkategori', '=', 'kategoris.idkategori')
      ->select('master_games.*', 'kategoris.kategori', 'kategoris.idkategori')
      ->where("master_games.status", '=', $status)
      ->get();
  }

  public function cariKategori($idkategori)
  {
    return MasterGame::join('kategoris', 'master_games.idkategori', '=', 'kategoris.idkategori')
      ->select('master_games.*', 'kategoris.kategori')
      ->where("master_games.idkategori", '=', $idkategori)
      ->get();
  }

  function randomGame()
  {
    $games = MasterGame::inRandomOrder()
      ->join('kategoris', 'master_games.idkategori', '=', 'kategoris.idkategori')
      ->select('master_games.idgame', 'master_games.nama_game', 'kategoris.kategori', 'master_games.gambar')
      ->take(2)
      ->get();

    $gameData = $games->map(function ($game, $index) {
      return (object)[
        'idgame' => $game->idgame,
        'nama' => $game->nama_game,
        'kategori' => $game->kategori,
        'gambar' => $game->gambar
      ];
    });

    return $gameData;
  }

  function randomGame2()
  {
    $games = MasterGame::inRandomOrder()
      ->join('kategoris', 'master_games.idkategori', '=', 'kategoris.idkategori')
      ->select('master_games.idgame', 'master_games.nama_game', 'kategoris.kategori', 'master_games.gambar')
      ->take(6)
      ->get();

    $gameData = $games->map(function ($game, $index) {
      return (object)[
        'idgame' => $game->idgame,
        'nama' => $game->nama_game,
        'kategori' => $game->kategori,
        'gambar' => $game->gambar
      ];
    });

    return $gameData;
  }

  // Untuk Detail Game
  function show($idgame)
  {
    return MasterGame::join('kategoris', 'master_games.idkategori', '=', 'kategoris.idkategori')
      ->join('spek_games', 'master_games.idgame', '=', 'spek_games.idgame')
      ->where("master_games.idgame", '=', $idgame)
      ->select('master_games.*', 'spek_games.*', 'kategoris.kategori')
      ->get()
      ->first();
  }

  function image($idgame)
  {
    $images = GambarGame::where('idgame', $idgame)->get();
    $imageObjects = collect($images)->map(function ($image) {
      return (object) [
        'game_preview1' => asset('/storage/games/' . $image->game_preview1),
        'game_preview2' => asset('/storage/games/' . $image->game_preview2),
        'game_preview3' => asset('/storage/games/' . $image->game_preview3),
      ];
    });
    return $imageObjects;
  }

  function about($idgame)
  {
    return AboutGame::where("idgame", $idgame)->get();
  }

  function komen($idgame)
  {
    return Comment::join('users', 'comments.iduser', '=', 'users.id')
      ->where("comments.idgame", $idgame)
      ->where('comments.aksi', "0")
      ->where('comments.upload', "1")
      ->select('comments.idkomen', 'comments.tanggal', 'comments.rate', 'comments.komen', 'users.name')
      ->orderBy("comments.updated_at", "DESC")
      ->get();
  }

  function replyKomen($idkomen, $idgame)
  {
    return Comment::join('users', 'comments.iduser', '=', 'users.id')
      ->where("comments.idgame", $idgame)
      ->where('comments.idkomen', $idkomen)
      ->where('comments.aksi', "1")
      ->where('comments.upload', "1")
      ->select('comments.idkomen', 'comments.tanggal', 'comments.rate', 'comments.komen', 'users.name')
      ->orderBy("comments.updated_at", "DESC")
      ->get();
  }

  function hitungKomentar($idgame)
  {
    return Comment::where('idgame', '=', $idgame)->count();
  }

  function hitungRate($idgame)
  {
    return Comment::where("idgame", '=', $idgame)->sum("rate");
  }

  function masSpekStore(Request $request)
  {
    $validatedData = $request->validate([
      'idgame' => 'required',
      'tanggal' => 'required',
      'nama_game' => 'required',
      'deskripsi' => 'required',
      'url' => 'required',
      'urlM' => 'required',
      'idkategori' => 'required',
      'status' => 'required',
      'min_cpu' => 'required',
      'min_gpu' => 'required',
      'min_ram' => 'required',
      'min_storage' => 'required',
      'rec_cpu' => 'required',
      'rec_gpu' => 'required',
      'rec_ram' => 'required',
      'rec_storage' => 'required',
    ]);

    $mGame = $request->file('gambar');
    $mGame->storeAs('public/games/', $mGame->hashName());

    $master = MasterGame::create([
      'idgame' => $validatedData['idgame'],
      'tanggal' => $validatedData['tanggal'],
      'nama_game' => $validatedData['nama_game'],
      'gambar' => $mGame->hashName(),
      'deskripsi' => $validatedData['deskripsi'],
      'url' => $validatedData['url'],
      'urlM' => $validatedData['urlM'],
      'idkategori' => $validatedData['idkategori'],
      'status' => $validatedData['status']
    ]);

    $spek = SpekGame::create([
      'idgame' => $validatedData['idgame'],
      'min_cpu' => $validatedData['min_cpu'],
      'min_gpu' => $validatedData['min_gpu'],
      'min_ram' => $validatedData['min_ram'],
      'min_storage' => $validatedData['min_storage'],
      'rec_cpu' => $validatedData['rec_cpu'],
      'rec_gpu' => $validatedData['rec_gpu'],
      'rec_ram' => $validatedData['rec_ram'],
      'rec_storage' => $validatedData['rec_storage']
    ]);

    return response()->json("Berhasil");
  }


  function komenStore(Request $request)
  {
    Comment::create([
      'idkomen' => $request->input('idkomen'),
      'idgame' => $request->input('idgame'),
      'tanggal' => $request->input('tanggal'),
      'iduser' => $request->input('iduser'),
      'rate' => $request->input('rate'),
      'komen' => $request->input('komen'),
      'aksi' => $request->input('aksi'),
      'upload' => $request->input('upload'),
    ]);

    return response()->json("Berhasil, Tunggu Admin Filter");
  }

  function masSpekUpdate(Request $request, $idgame)
  {
    $validatedData = $request->validate([
      'tanggal' => 'required',
      'nama_game' => 'required',
      'deskripsi' => 'required',
      'url' => 'required',
      'urlM' => 'required',
      'idkategori' => 'required',
      'status' => 'required',
      'min_cpu' => 'required',
      'min_gpu' => 'required',
      'min_ram' => 'required',
      'min_storage' => 'required',
      'rec_cpu' => 'required',
      'rec_gpu' => 'required',
      'rec_ram' => 'required',
      'rec_storage' => 'required',
    ]);

    $master = MasterGame::where('idgame', $idgame)->first();

    if ($request->hasFile('gambar')) {
      $gambar = $request->file('gambar');
      $gambar->storeAs('public/games', $gambar->hashName());

      Storage::delete('public/games/' . basename($master->gambar));

      MasterGame::where('idgame', $idgame)->update([
        'tanggal' => $validatedData['tanggal'],
        'nama_game' => $validatedData['nama_game'],
        'gambar' => $gambar->hashName(),
        'url' => $validatedData['url'],
        'urlM' => $validatedData['urlM'],
        'deskripsi' => $validatedData['deskripsi'],
        'idkategori' => $validatedData['idkategori'],
        'status' => $validatedData['status']
      ]);

      SpekGame::where('idgame', $idgame)->update([
        'min_cpu' => $validatedData['min_cpu'],
        'min_gpu' => $validatedData['min_gpu'],
        'min_ram' => $validatedData['min_ram'],
        'min_storage' => $validatedData['min_storage'],
        'rec_cpu' => $validatedData['rec_cpu'],
        'rec_gpu' => $validatedData['rec_gpu'],
        'rec_ram' => $validatedData['rec_ram'],
        'rec_storage' => $validatedData['rec_storage']
      ]);
    } else {
      MasterGame::where('idgame', $idgame)->update([
        'tanggal' => $validatedData['tanggal'],
        'nama_game' => $validatedData['nama_game'],
        'url' => $validatedData['url'],
        'urlM' => $validatedData['urlM'],
        'deskripsi' => $validatedData['deskripsi'],
        'idkategori' => $validatedData['idkategori'],
        'status' => $validatedData['status']
      ]);

      SpekGame::where('idgame', $idgame)->update([
        'min_cpu' => $validatedData['min_cpu'],
        'min_gpu' => $validatedData['min_gpu'],
        'min_ram' => $validatedData['min_ram'],
        'min_storage' => $validatedData['min_storage'],
        'rec_cpu' => $validatedData['rec_cpu'],
        'rec_gpu' => $validatedData['rec_gpu'],
        'rec_ram' => $validatedData['rec_ram'],
        'rec_storage' => $validatedData['rec_storage']
      ]);
    }

    return response("Berhasil Ubah");
  }

  function deleteGame($idgame)
  {
    // Hapus gambar dari MasterGame
    $master = MasterGame::where('idgame', $idgame)->first();
    if ($master) {
      Storage::delete('public/games/' . basename($master->gambar));
      MasterGame::where('idgame', $idgame)->delete();
    }

    // Hapus gambar dari GambarGame
    $gGambar = GambarGame::where('idgame', $idgame)->first();
    if ($gGambar) {
      Storage::delete('public/games/' . basename($gGambar->game_preview1));
      Storage::delete('public/games/' . basename($gGambar->game_preview2));
      Storage::delete('public/games/' . basename($gGambar->game_preview3));
      GambarGame::where('idgame', $idgame)->delete();
    }

    // Hapus gambar dari AboutGame
    $about = AboutGame::where('idgame', $idgame)->first();
    if ($about) {
      Storage::delete('public/about/' . basename($about->gambar));
      AboutGame::where('idgame', $idgame)->delete();
    }

    // Hapus data dari tabel-tabel lainnya
    SpekGame::where('idgame', $idgame)->delete();
    Comment::where('idgame', $idgame)->delete();

    return response("Berhasil Hapus");
  }
}
