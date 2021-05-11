<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cycle_filiere extends Model
{
    protected  $table = 'cycle_filieres';
    public  $timestamps = true;

    public function cycles(){
        return $this->belongsToMany(Cycle::class, 'cycle_id');
    }

    public function filieres(){
        return $this->belongsToMany(Filiere::class, 'filiere_id');
    }

    public function specialites(){
        return $this->hasMany(Specialite::class, 'cycle_filiere_id');
    }

    public function domaine_cycles(){
        return $this->hasMany(Domaine_cycle::class, 'domaine_cycle_id');
    }
}
