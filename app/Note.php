<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Note extends Model
{
    protected $table = 'notes';
    public $timestamps = true;

    public function type_notes(){
        return $this->belongsTo(Type_note::class, 'type_note_id');
    }

    public function mat_spes(){
        return $this->belongsTo(Mat_spe::class, 'mat_spe_id');
    }

    public function inscriptions(){
        return $this->belongsTo(Inscription::class, 'inscription_id');
    }

    public function users(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function paiements(){
        return $this->hasMany(Paiement_scolarite::class, 'note_id');
    }
}
