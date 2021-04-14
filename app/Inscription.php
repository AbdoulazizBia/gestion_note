<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inscription extends Model
{
    protected $table = 'inscriptions';
    public $timestamps = true;

    public function etudiants(){
        return $this->belongsTo(Etudiant::class, 'etudiant_id');
    }

    public function annees(){
        return $this->belongsTo(annee_aca::class, 'annee_id');
    }

    public function specialites(){
        return $this->belongsTo(Specialite::class, 'specialite_id');
    }

    public function niveaux(){
        return $this->belongsTo(Niveau::class, 'niveau_id');
    }

    public function notes(){
        return $this->hasMany(Note::class, 'inscription_id');
    }

    public function users(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
