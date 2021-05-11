<?php

namespace App\Admin\Controllers;

use App\Cycle;
use App\Cycle_filiere;
use App\Domaine;
use App\Domaine_cycle;
use App\Filiere;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CycleFiliereController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Cycle et filière';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Cycle_filiere());

        $grid->column('id', __('Id'));
        $grid->column('cycle_id', __('Cycle'))->display(function () {
            $cycles  =  Cycle::find($this->cycle_id);
            return $cycles->nom_cycle;
        });
        $grid->column('filiere_id', __('Filiere'))->display(function () {
            $filières  =  Filiere::find($this->filiere_id);
            return $filières->nom_filiere;
        });
        $grid->column('domaine_cycle_id', __('Domaine / Cycle'))->display(function () {
            $domaine_cycle  =  Domaine_cycle::find($this->domaine_cycle_id);
            $cycle = Cycle::find($domaine_cycle->cycle_id)->nom_cycle;
            $domaine = Domaine::find($domaine_cycle->domaine_id)->nom_domaine;
            $dc = $domaine.'/'.$cycle;
            return $dc;
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
        $show = new Show(Cycle_filiere::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('cycle_id', __('Cycle'));
        $show->field('filiere_id', __('Filiere'));
        $show->field('domaine_cycle_id', __('Domaine / Cycle'));
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
        $form = new Form(new Cycle_filiere());

        $cycles = ['0'=>'selectionner un cycle'];
        $c = Cycle::all();
        foreach ($c as $cycle){
            $cycles[$cycle->id] = $cycle->nom_cycle;
        }

        $filieres = ['0'=>'selectionner une filière'];
        $f = Filiere::all();
        foreach ($f as $filiere){
            $filieres[$filiere->id] = $filiere->nom_filiere;
        }

        $domaineC =['0'=>'selectionner un domaine / Cycle'];
        $dc = Domaine_cycle::all();
        foreach ($dc as $d){
            $cycle = Cycle::find($d->cycle_id)->nom_cycle;
            $domaine = Domaine::find($d->domaine_id)->nom_domaine;
            $domaineC[$d->id] = $domaine.'/'.$cycle;
        }
        asort($domaineC);

        $form->select('cycle_id', __('Cycle'))->options($cycles);
        $form->select('filiere_id', __('Filiere'))->options($filieres);
        $form->select('domaine_cycle_id', __('Domaine / Cycle'))->options($domaineC);
        return $form;
    }
}
