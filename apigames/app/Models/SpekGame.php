<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SpekGame extends Model
{
  protected $fillable = [
    'idgame', 'min_cpu', 'min_gpu',
    'min_ram', 'min_storage', 'rec_cpu',
    'rec_gpu', 'rec_ram', 'rec_storage'
  ];
}
