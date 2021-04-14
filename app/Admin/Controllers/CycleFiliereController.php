<?php

namespace App\Admin\Controllers;

use App\Cycle_filiere;
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
        $grid->column('cycle_id', __('Cycle id'));
        $grid->column('filiere_id', __('Filiere id'));
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
        $show->field('cycle_id', __('Cycle id'));
        $show->field('filiere_id', __('Filiere id'));
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

        $form->number('cycle_id', __('Cycle id'));
        $form->number('filiere_id', __('Filiere id'));

        return $form;
    }
}
