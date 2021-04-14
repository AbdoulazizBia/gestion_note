<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mat_spe extends Model
{
    protected $table = 'mat_spes';
    public $timestamps = true;

    public function  notes(){
        return $this->hasMany(Note::class, 'mat_spe_id');
    }

    public function paiements(){
        return $this->hasMany(Paiement_scolarite::class,'mat_spe_id');
    }

    public function groupe_ues(){
        return $this->hasMany(Groupe_ue::class, 'mat_spe_id');
}

    public function matieres(){
        return $this->belongsToMany(Matiere::class, 'matiere_id');
    }

    public function specialites(){
        return $this->belongsToMany(Specialite::class, 'specialie_id');
    }

    public function niveaux(){
        return $this->belongsTo(Niveau::class, 'niveau_id');
    }

}
