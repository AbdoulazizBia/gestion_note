<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaiementScolaritesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paiement_scolarites', function (Blueprint $table) {
            $table->id();
            $table->integer('note_id');
            $table->integer('niveau_id');
            $table->integer('mat_spe_id');
            $table->double('tranche1')->default(0.00);
            $table->double('tranche2')->default(0.00);
            $table->double('tranche3')->default(0.00);
            $table->double('tranche4')->default(0.00);
            $table->double('tranche5')->default(0.00);
            $table->boolean('cache')->default(0);
            //$table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('paiement_scolarites');
    }
}
