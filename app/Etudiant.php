<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Etudiant extends Model
{
    protected $table = 'etudiants';
    public $timestamps = true;

    public function inscriptions(){
        return $this->hasMany(Inscription::class, 'etudiant_id');
    }
}
