<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class MasterGame extends Model
{
  protected $fillable = ['idgame', 'tanggal', 'nama_game', 'gambar', 'url', 'urlM', 'deskripsi', 'idkategori', 'status'];

  /**
   * 
   * @return Attribute
   */
  protected function gambar(): Attribute
  {
    return Attribute::make(
      get: fn ($gambar) => asset('/storage/games/' . $gambar)
    );
  }
}
