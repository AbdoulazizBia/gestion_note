<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Specialite extends Model
{
    protected $table = 'specialites';
    public $timestamps = true;

    public function cycle_filieres(){
        return $this->belongsTo(Cycle_filiere::class, 'cycle_filiere_id');
    }

    public function inscriptions(){
        return $this->hasMany(Inscription::class, 'specialite_id');
    }

    public function mat_spes(){
        return $this->hasMany(Mat_spe::class, 'specialite_id');
    }
}
