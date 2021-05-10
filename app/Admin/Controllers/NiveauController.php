<?php

namespace App\Admin\Controllers;

use App\Cycle;
use App\Niveau;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NiveauController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Niveau';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Niveau());

        $grid->column('id', __('Id'));
        $grid->column('nom_niv', __('Nom'));
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
        $show = new Show(Niveau::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nom_niv', __('Nom'));
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
        $form = new Form(new Niveau());

        $cycles = ['0'=>'selectionner un cycle'];
        $c = Cycle::all();
        foreach ($c as $cycle){
            $cycles[$cycle->id] = $cycle->nom_cycle;
        }

        $form->text('nom_niv', __('Nom'));
        $form->select('cycle_id', __('Cycle'))->options($cycles);

        return $form;
    }
}
