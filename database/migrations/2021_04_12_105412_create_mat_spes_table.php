<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMatSpesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mat_spes', function (Blueprint $table) {
            $table->id();
            $table->integer('matiere_id');
            $table->integer('specialite_id');
            $table->string('semestre');
            $table->integer('credit');
            $table->string('code_mat');
            $table->integer('niveau_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mat_spes');
    }
}
