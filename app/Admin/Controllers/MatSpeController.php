<?php

namespace App\Admin\Controllers;

use App\Mat_spe;
use App\Matiere;
use App\Niveau;
use App\Specialite;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MatSpeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Matières et spécialité';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Mat_spe());

        $grid->column('id', __('Id'));
        $grid->column('matiere_id', __('Matiere'))->display(function () {
            $matiere  =  Matiere::find($this->matiere_id);
            return $matiere->intitule_mat;
        });
        $grid->column('specialite_id', __('Specialite'))->display(function () {
            $specialite  =  Specialite::find($this->specialite_id);
            return $specialite->nom_spe;
        });
        $grid->column('semestre', __('Semestre'));
        $grid->column('credit', __('Credit'));
        $grid->column('code_mat', __('Code'));
        $grid->column('niveau_id', __('Niveau'))->display(function () {
            $niveau  =  Niveau::find($this->niveau_id);
            return $niveau->nom_niv;
        });
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Mat_spe::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('matiere_id', __('Matiere'));
        $show->field('specialite_id', __('Specialite'));
        $show->field('semestre', __('Semestre'));
        $show->field('credit', __('Credit'));
        $show->field('code_mat', __('Code'));
        $show->field('niveau_id', __('Niveau'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Mat_spe());

        $matiere = ['0'=>'selectionner une matière'];
        $mat = Matiere::all();
        foreach ($mat as $m){
            $matiere[$m->id] = $m->intitule_mat;
        }

        $specialite = ['0'=>'selectionner une spécialite'];
        $spe = Specialite::all();
        foreach ($spe as $s){
            $specialite[$s->id] = $s->nom_spe;
        }

        $niveau = ['0'=>'selectionner un Niveau'];
        $niv = Niveau::all();
        foreach ($niv as $n){
            $niveau[$n->id] = $n->nom_niv;
        }

        $form->select('matiere_id', __('Matiere'))->options($matiere);
        $form->select('specialite_id', __('Specialite'))->options($specialite);
        $form->text('semestre', __('Semestre'));
        $form->number('credit', __('Credit'));
        $form->text('code_mat', __('Code'));
        $form->select('niveau_id', __('Niveau'))->options($niveau);

        return $form;
    }
}
