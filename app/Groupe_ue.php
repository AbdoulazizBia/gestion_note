<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Groupe_ue extends Model
{
    protected $table = 'groupe_ues';
    public $timestamps = true;

    public function mat_spes(){
        return $this->belongsTo(Mat_spe::class, 'mat_spe_id');
    }
}
