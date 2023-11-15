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
    Schema::create('spek_games', function (Blueprint $table) {
      $table->id();
      $table->string('idgame');
      $table->string('min_cpu');
      $table->string('min_gpu');
      $table->string('min_ram');
      $table->string('min_storage');
      $table->string('rec_cpu');
      $table->string('rec_gpu');
      $table->string('rec_ram');
      $table->string('rec_storage');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('spek_games');
  }
};
