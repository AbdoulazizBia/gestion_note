<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Paiement_scolarite extends Model
{
    protected $table = 'paiement_scolarites';
    public $timestamps = true;

    public function notes(){
        return $this->belongsTo(Note::class, 'note_id');
    }

    public function niveaux(){
        return $this->belongsTo(Niveau::class, 'niveau_id');
    }

    public function mat_spes(){
        return $this->belongsTo(Mat_spe::class, 'mat_spe_id');
    }
}
