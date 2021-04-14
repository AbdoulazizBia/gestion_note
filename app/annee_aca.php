<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class annee_aca extends Model
{
    protected $table = 'annee_acas';
    public $timestamps = true;

    public function inscriptions(){
        return $this->hasMany(Inscription::class, 'annee_id');
    }
}
