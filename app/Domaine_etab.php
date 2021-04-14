<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Domaine_etab extends Model
{
    protected $table = 'domaine_etabs';
    public  $timestamps = true;

    public function domaines(){
        return $this->belongsToMany(Domaine::class, 'domaine_id');
    }

    public function etablissements(){
        return $this->belongsToMany(Etablissement::class, 'etab_id');
    }
}
