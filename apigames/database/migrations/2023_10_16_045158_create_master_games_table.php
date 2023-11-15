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
    Schema::create('master_games', function (Blueprint $table) {
      $table->integer('idgame')->primary();
      $table->string('tanggal');
      $table->string('gambar');
      $table->string('nama_game');
      $table->string('url');
      $table->string('urlM');
      $table->string('deskripsi');
      $table->string('idkategori');
      $table->string('status');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('master_games');
  }
};
