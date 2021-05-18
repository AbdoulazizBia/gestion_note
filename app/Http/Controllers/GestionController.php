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

    public function affichage( $nom_domaine, $tab){

        $data = [];
        $liste_formations = [];
        foreach ($tab as $t){
            if ($t->nom_domaine == $nom_domaine){

                array_push($liste_formations,$t);

            }
        }
        $data[$nom_domaine] = $liste_formations;
        return  $data;
    }

    public function specialite(){
        $domaines = Domaine::all()->pluck('nom_domaine');
        $domaine_cycle = Domaine_cycle::all();

        $d = Domaine::join('domaine_cycles', 'domaines.id', '=', 'domaine_cycles.domaine_id')
                        ->join('cycles', 'domaine_cycles.cycle_id', '=', 'cycles.id')
                        ->join('cycle_filieres', function ($join) {
                            $join->on('cycles.id', '=', 'cycle_filieres.cycle_id')
                                ->on('domaine_cycles.id','=','cycle_filieres.domaine_cycle_id');
                        })
                        //->join('cycle_filieres', 'cycle_filieres.cycle_id', '=', 'cycles.id')
                        //->join('cycle_filieres', 'cycle_filieres.domaine_cycle_id', '=', 'domaine_cycles.id')
                        ->join('filieres', 'cycle_filieres.filiere_id', '=', 'filieres.id')
                        ->join('specialites', 'cycle_filieres.id', '=', 'specialites.cycle_filiere_id')
                        ->select('domaine_cycles.id','specialites.code_spe','domaines.nom_domaine','cycles.nom_cycle','filieres.nom_filiere','specialites.nom_spe')
                        ->get();
        $cycles = Cycle::all();
//        $d = DB::select('SELECT d.*, c.*, do.* FROM domaine_cycles AS d, cycles AS c, domaines AS do WHERE d.domaine_id=do.id AND d.cycle_id=c.id GROUP BY d.id');


        $fil = DB::select('SELECT DISTINCT cf.*,dc.*, f.*, c.* FROM cycle_filieres AS cf, domaine_cycles AS dc, filieres AS f, cycles AS c WHERE dc.cycle_id=cf.cycle_id AND cf.filiere_id=f.id AND c.id=cf.cycle_id AND dc.id=cf.domaine_cycle_id');
        $tab2 = [];

        $tab_formations = [];
        foreach ($domaines as $do){
            //$tab2 = $this->affichage($do->id,$do->nom_domaine, $d);
            $tab_formations[$do] = $this->affichage($do,$d);
            //dump($tab_formations[$do]);
        }

        $cycle_filiere = Cycle_filiere::all();
        $niveaux = Niveau::all();
        $filieres = Filiere::all();
        $specialites = Specialite::all();
        $this->values["dc"] = $tab_formations;
        $this->values["affiche_domaine"] = $tab_formations;
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
