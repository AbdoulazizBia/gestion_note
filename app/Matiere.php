<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Matiere extends Model
{
    protected $table = 'matieres';
    public $timestamps = true;

    public function mat_spes(){
        return $this->hasMany(Mat_spe::class, 'mat_spe_id');
    }
}
