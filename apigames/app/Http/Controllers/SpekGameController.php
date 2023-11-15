<?php

namespace App\Http\Controllers;

use App\Models\SpekGame;
use Illuminate\Http\Request;

class SpekGameController extends Controller
{
  function index()
  {
    return SpekGame::all();
  }
}
