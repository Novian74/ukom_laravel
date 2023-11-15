<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
  function index()
  {
    return Comment::join('master_games', 'comments.idgame', '=', 'master_games.idgame')
      ->join('users', 'comments.iduser', '=', 'users.id')
      ->select('comments.*', 'master_games.nama_game', 'users.name')
      ->orderBy("comments.upload",'asc')
      ->get();
  }

  function update(Request $request, $id)
  {
    $komen = Comment::find($id);
    $upload = $request->input('upload');

    $komen->update(['upload' => $upload]);

    return response("Berhasil Upload");
  }

  function delete($id)
  {
    $komen = Comment::find($id);
    $komen->delete();

    return response("Berhasil Hapus");
  }

  function history($iduser)
  {
    return Comment::join('master_games', 'comments.idgame', '=', 'master_games.idgame')
      ->join('users', 'comments.iduser', '=', 'users.id')
      ->where("comments.iduser", $iduser)
      ->select('comments.*', 'master_games.nama_game', 'users.name')
      ->get();
  }
}
