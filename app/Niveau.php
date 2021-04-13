<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Niveau extends Model
{
    protected  $table = 'niveau';
    public  $timestamps = false;
    public function cycles(){
        return $this->belongsTo(Cycle::class, 'cycle_id');
    }
}
