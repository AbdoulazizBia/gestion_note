<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type_note extends Model
{
    protected $table = 'type_notes';
    public $timestamps = true;

    public function notes(){
        return $this->hasMany(Note::class, 'type_note_id');
    }
}
