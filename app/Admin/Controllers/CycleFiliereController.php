<?php

namespace App\Admin\Controllers;

use App\Cycle;
use App\Cycle_filiere;
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
    protected $title = 'Cycle_filiere';

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
        });;
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

        $form->select('cycle_id', __('Cycle'))->options($cycles);
        $form->select('filiere_id', __('Filiere'))->options($filieres);
        return $form;
    }
}
