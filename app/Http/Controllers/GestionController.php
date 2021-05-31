<?php

namespace App\Http\Controllers;

use App\Cycle;
use App\Cycle_filiere;
use App\Domaine;
use App\Domaine_cycle;
use App\Filiere;
use App\Groupe_ue;
use App\Mat_spe;
use App\Matiere;
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
                        ->select('cycle_filieres.cycle_id','specialites.code_spe','domaines.nom_domaine','cycles.nom_cycle','filieres.nom_filiere','specialites.nom_spe','specialites.id')
                        //->select('domaine_cycles.id','specialites.code_spe','domaines.nom_domaine','cycles.nom_cycle','filieres.nom_filiere','specialites.nom_spe','specialites.id')
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
        $niveaux = Niveau::all()->groupBy('cycle_id');
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

//----------------------------------------------------------------------------------------------------//

    public function matieres(Request $request, $specialite_id){
        $specialite = Specialite::join('cycle_filieres', 'specialites.cycle_filiere_id', '=', 'cycle_filieres.id')
            ->join('filieres', 'cycle_filieres.filiere_id', '=', 'filieres.id')
            ->join('cycles','cycles.id', '=', 'cycle_filieres.cycle_id')
            ->where('specialites.id','=', $specialite_id)
            ->select('specialites.id','specialites.nom_spe','specialites.code_spe','cycles.nom_cycle','filieres.nom_filiere')
            ->distinct()
            ->get();

        $niv = Niveau::all()->where('id','=', $request->input('niveau'));
        $matieres = Matiere::all();
        $mat = Matiere::join('mat_spes', function ($join) {
                $join->on('matieres.id', '=', 'mat_spes.matiere_id');
            })
            ->join('specialites', 'specialites.id', '=', 'mat_spes.specialite_id')
            ->join('niveaux', 'niveaux.id', '=', 'mat_spes.niveau_id')
            ->where('specialites.id','=', $specialite_id)
            ->where('mat_spes.niveau_id','=', $request->input('niveau'))
            ->get();

        $this->values["matieres"] = $matieres;
        $this->values["niveaux"] = $niv;
        $this->values["mat_spe"] = $mat;
        $this->values["specialites"] = $specialite;
        return view('note.matiere',$this->values);
    }

    public function register(Request $request){

        $matiere = $request->input('matiere');
        $spe_id = $request->input('spe_id');
        $niv_id = $request->input('niveau');
        $code = [];
        $semestre = [];
        $credit = [];

        $specialite = Specialite::all()->where('id','=', $spe_id);
        $niv = Niveau::all()->where('id','=', $request->input('niveau'));
        $matieres = Matiere::all();

        foreach ($matiere as $key=> $m){
            $code[$key] = $request->input('code-'.preg_replace('/\s+/', '_', $m));
            $semestre[$key] = $request->input('semestre-'.preg_replace('/\s+/', '_', $m));
            $credit[$key] = $request->input('credit-'.preg_replace('/\s+/', '_', $m));
        }

        $mats = new Mat_spe();

        $mats->specialite_id = $spe_id;
        $mats->niveau_id = $niv_id;
        foreach ($code as $keycd => $codes){
            foreach ($semestre as $keys => $semestres){
                foreach ($credit as $keycr => $credits){
                    if ($keycd == $keys AND $keycd == $keycr AND $keys == $keycr){
                        $mats->code_mat = $codes;
                        $mats->matiere_id = $keycd;
                        $mats->credit = $credits;
                        $mats->semestre = $semestres;
                        //Mat_spe::create($mats->all());
                        $mats->save();
                    }
                }
            }
        }
        $mat = Matiere::join('mat_spes', function ($join) {
            $join->on('matieres.id', '=', 'mat_spes.matiere_id');
        })
            ->join('specialites', 'specialites.id', '=', 'mat_spes.specialite_id')
            ->join('niveaux', 'niveaux.id', '=', 'mat_spes.niveau_id')
            ->where('specialites.id','=', $spe_id)
            ->where('mat_spes.niveau_id','=', $request->input('niveau'))
            ->select('matieres.intitule_mat','mat_spes.code_mat','mat_spes.credit','mat_spes.semestre','mat_spes.id')
            ->distinct()
            ->get();

        $this->values["matieres"] = $matieres;
        $this->values["niveaux"] = $niv;
        $this->values["mat_spe"] = $mat;
        $this->values["specialites"] = $specialite;
        return view('note.matiere',$this->values);

    }

    public function groupes(Request $request){
        $spe_id = $request->input('spe_id');
        $niv_id = $request->input('niveau');
        $n = [];
        $mt = Matiere::all();
        $nom_mat = [];
        foreach ($mt as $key=> $m){
            $nom_mat[$m->id] = $request->input('matiere-'.preg_replace('/\s+/', '_', $m->intitule_mat));
        }
        $mat = Matiere::join('mat_spes', function ($join) {
            $join->on('matieres.id', '=', 'mat_spes.matiere_id');
        })
            ->join('specialites', 'specialites.id', '=', 'mat_spes.specialite_id')
            ->join('niveaux', 'niveaux.id', '=', 'mat_spes.niveau_id')
            ->where('specialites.id','=', $spe_id)
            ->where('mat_spes.niveau_id','=', $niv_id)
            ->select('matieres.intitule_mat','mat_spes.code_mat','mat_spes.credit','mat_spes.semestre','mat_spes.matiere_id','mat_spes.id')
            ->distinct()
            ->get();

        foreach ($nom_mat as $key => $nm){
            if ($nm != null){
                $n[$key] = $nm;
            }
        }

        $this->values["groupes"] = $mat;
        $this->values["nom_groupe"] = $n;
        return view('note.groupe',$this->values);
    }

    public function saveGroup(Request $request){
        $matieres = $request->input('matiere');
        $id_mat_spe = $request->input('id_mat_spe');
        $ms = Mat_spe::all();
        $semestres = [];
        foreach ($ms as $m){
            $semestres[$m->matiere_id] = $request->input('semestre-'. $m->matiere_id);
        }

        $g = new Groupe_ue();

        foreach ($matieres as $keym => $mt){
            foreach ($semestres as $keys => $s){
                if ($keym == $keys){
                    $g->mat_spe_id = $id_mat_spe;
                    $g->matiere_mere_id = $keym;
                    $g->semestre = $s;
                    $g->save();
                }
            }
        }
        dump($request);

    }

}
