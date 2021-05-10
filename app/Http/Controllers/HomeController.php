<?php

namespace App\Http\Controllers;

use App\Cycle;
use App\Domaine;
use App\Filiere;
use App\Niveau;
use App\Specialite;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $values = [];
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
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


        return view('home', $this->values);
    }
}
