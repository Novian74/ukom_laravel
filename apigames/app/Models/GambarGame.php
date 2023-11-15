<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class GambarGame extends Model
{
  use HasFactory;

  protected $fillable = ['idgame', 'game_preview1', 'game_preview2', 'game_preview3'];
}
