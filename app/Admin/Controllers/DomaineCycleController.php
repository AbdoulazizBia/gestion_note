<?php

namespace App\Admin\Controllers;

use App\Cycle;
use App\Domaine;
use App\Domaine_cycle;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class DomaineCycleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Domaine_cycle';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Domaine_cycle());

        $grid->column('id', __('Id'));
        $grid->column('domaine_id', __('Domaine'))->display(function () {
            $domaines  =  Domaine::find($this->domaine_id);
            return $domaines->nom_domaine;
        });
        $grid->column('cycle_id', __('Cycle'))->display(function () {
            $cycles  =  Cycle::find($this->cycle_id);
            return $cycles->nom_cycle;
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
        $show = new Show(Domaine_cycle::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('domaine_id', __('Domaine'));
        $show->field('cycle_id', __('Cycle'));
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
        $form = new Form(new Domaine_cycle());

        $domaines = ['0'=>'selectionner un domaine'];
        $d = Domaine::all();
        foreach ($d as $domaine){
            $domaines[$domaine->id] = $domaine->nom_domaine;
        }

        $cycles = ['0'=>'selectionner un cycle'];
        $c = Cycle::all();
        foreach ($c as $cycle){
            $cycles[$cycle->id] = $cycle->nom_cycle;
        }

        $form->select('domaine_id', __('Domaine'))->options($domaines);
        $form->select('cycle_id', __('Cycle'))->options($cycles);

        return $form;
    }
}
