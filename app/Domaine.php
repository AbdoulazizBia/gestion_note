<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Domaine extends Model
{
    protected $table = 'domaines';
    public $timestamps = true;

    public function domaine_cycles(){
        return $this->hasMany(Domaine_cycle::class, 'domaine_id');
    }

    public function domaine_etabs(){
        return $this->hasMany(Domaine_etab::class, 'domaine_id');
    }
}
