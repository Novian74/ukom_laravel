<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
  /**
   * Run the migrations.
   */
  public function up(): void
  {
    Schema::create('gambar_games', function (Blueprint $table) {
      $table->id();
      $table->string('idgame');
      $table->string('game_preview1');
      $table->string('game_preview2');
      $table->string('game_preview3');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('gambar_games');
  }
};
