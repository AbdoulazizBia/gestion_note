<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notes', function (Blueprint $table) {
            $table->id();
            $table->double('note')->default(0);
            $table->integer('type_note_id')->default(0);
            $table->integer('mat_spe_id')->default(0);
            $table->integer('inscription_id')->default(0);
            $table->integer('user_id')->default(0);
            //$table->foreign('type_note_id')->references('id')->on('Type_notes');
            //$table->foreign('mat_spe_id')->references('id')->on('Mat_spe');
            //$table->foreign('inscription_id')->references('id')->on('Inscription');
            //$table->foreign('user_id')->references('id')->on('User');
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
        Schema::dropIfExists('notes');
    }
}
