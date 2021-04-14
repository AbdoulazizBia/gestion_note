<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cycle extends Model
{
    protected  $table = 'cycles';
    public  $timestamps= true;

    public function niveaux(){
        return $this->hasMany(Niveau::class, 'cycle_id');
    }

    public function cycle_filieres(){
        return $this->hasMany(Cycle_filiere::class, 'cycle_id');
    }

    public function domaine_cycles(){
        return $this->hasMany(Domaine_cycle::class, 'cycle_id');
    }
}
