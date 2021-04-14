<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Niveau extends Model
{
    protected  $table = 'niveaux';
    public  $timestamps = true;

    public function cycles(){
        return $this->belongsTo(Cycle::class, 'cycle_id');
    }

    public function inscriptions(){
        return $this->hasMany(Inscription::class, 'niveau_id');
    }

    public function paiements(){
        return $this->hasMany(Paiement_scolarite::class, 'niveau_id');
    }

    public function mat_spes(){
        return $this->hasMany(Mat_spe::class, 'niveau_id');
    }
}
