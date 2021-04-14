<?php

namespace App\Admin\Controllers;

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
        $grid->column('domaine_id', __('Domaine id'));
        $grid->column('cycle_id', __('Cycle id'));
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
        $show->field('domaine_id', __('Domaine id'));
        $show->field('cycle_id', __('Cycle id'));
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

        $form->number('domaine_id', __('Domaine id'));
        $form->number('cycle_id', __('Cycle id'));

        return $form;
    }
}
