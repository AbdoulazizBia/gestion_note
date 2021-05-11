<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Domaine_cycle extends Model
{
    protected  $table = 'domaine_cycles';
    public  $timestamps = true;

    public function cycles(){
        return $this->belongsToMany(Cycle::class, 'cycle_id');
    }

    public function domaines(){
        return $this->belongsToMany(Domaine::class, 'domaine_id');
    }

    public function cycle_filieres(){
        return $this->belongsTo(Cycle_filiere::class, 'domaine_cycle_id');
    }
}
