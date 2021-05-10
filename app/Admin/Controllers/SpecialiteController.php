<?php

namespace App\Admin\Controllers;

use App\Cycle;
use App\Cycle_filiere;
use App\Filiere;
use App\Specialite;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SpecialiteController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Specialite';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Specialite());

        $grid->column('id', __('Id'));
        $grid->column('nom_spe', __('Nom'));
        $grid->column('code_spe', __('Code'));
        $grid->column('cycle_filiere_id', __('Cycle et filiere'))->display(function () {
            $cyclef  =  Cycle_filiere::find($this->cycle_filiere_id);
            $cycle = Cycle::find($cyclef->cycle_id)->nom_cycle;
            $filiere = Filiere::find($cyclef->filiere_id)->nom_filiere;
            $cf = $cycle.'/'.$filiere;
            return $cf;
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
        $show = new Show(Specialite::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nom_spe', __('Nom'));
        $show->field('code_spe', __('Code'));
        $show->field('cycle_filiere_id', __('Cycle et filiere'));
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
        $form = new Form(new Specialite());

        $cyclef =[];
        $cf = Cycle_filiere::all();
        foreach ($cf as $c){
            $cycle = Cycle::find($c->cycle_id)->nom_cycle;
            $filiere = Filiere::find($c->filiere_id)->nom_filiere;
            $cyclef[$c->id] = $cycle.'/'.$filiere;
        }
        asort($cyclef);

        $form->text('nom_spe', __('Nom'));
        $form->text('code_spe', __('Code'));
        $form->select('cycle_filiere_id', __('Cycle et filiere'))->options($cyclef);

        return $form;
    }
}
