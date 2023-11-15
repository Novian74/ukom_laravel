<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
  protected $fillable = ['kategori', 'gambar'];

   /**
   * 
   * @return Attribute
   */
  protected function gambar(): Attribute
  {
    return Attribute::make(
      get: fn ($gambar) => asset('/storage/poster/' . $gambar)
    );
  }
}
