<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cycle extends Model
{
    protected  $table = 'cycle';
    public  $timestamps=false;
    public function niveaux(){
        return $this->hasMany(Niveau::class, 'cycle_id');
    }
}
