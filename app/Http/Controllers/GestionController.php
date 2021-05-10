<?php

namespace App\Http\Controllers;

use App\Cycle;
use App\Cycle_filiere;
use App\Domaine;
use App\Domaine_cycle;
use App\Filiere;
use App\Niveau;
use App\Specialite;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GestionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $values = [];

    }

    public function index(){
        $domaines = Domaine::all();
        $cycles = Cycle::all();
        $niveaux = Niveau::all();
        $filieres = Filiere::all();
        $specialites = Specialite::all();
        $this->values["domaines"] = $domaines;
        $this->values["niveaux"] = $niveaux;
        $this->values["cycles"] = $cycles;
        $this->values["filieres"] = $filieres;
        $this->values["specialites"] = $specialites;
        return view('home', $this->values );
    }

    public function specialite(){
        $domaines = DB::select(' SELECT id,nom_domaine FROM domaines');
        $cycles = Cycle::all();
        $d = DB::select('SELECT d.*, c.*, do.* FROM domaine_cycles AS d, cycles AS c, domaines AS do WHERE d.domaine_id=do.id AND d.cycle_id=c.id');

        $domaine_cycle = Domaine_cycle::all();
        $cycle_filiere = Cycle_filiere::all();
        $niveaux = Niveau::all();
        $filieres = Filiere::all();
        $specialites = Specialite::all();
        $this->values["dc"] = $d;
        $this->values["domaines"] = $domaines;
        $this->values["cycle_filiere"] = $cycle_filiere;
        $this->values["domaine_cycle"] = $domaine_cycle;
        $this->values["niveaux"] = $niveaux;
        $this->values["cycles"] = $cycles;
        $this->values["filieres"] = $filieres;
        $this->values["specialites"] = $specialites;
        return view('note.selection_specialite', $this->values);
    }

    public function show(){
        return view('note.programme');
    }
}