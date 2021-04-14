<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Etablissement extends Model
{
    protected $table = 'etablissements';
    public $timestamps = true;

    public function domaine_etabs(){
        return $this->hasMany(Domaine_etab::class, 'etab_id');
    }
}
