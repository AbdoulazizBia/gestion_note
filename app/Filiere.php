<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Filiere extends Model
{
    protected $table = 'filieres';
    public $timestamps = true;

    public function cycle_filieres(){
        return $this->hasMany(Cycle_filiere::class, 'filiere_id');
    }
}
