<?php

namespace App\Admin\Controllers;

use App\Matiere;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MatiereController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Matiere';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Matiere());

        $grid->column('id', __('Id'));
        $grid->column('intitule_mat', __('Intitule mat'));
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
        $show = new Show(Matiere::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('intitule_mat', __('Intitule mat'));
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
        $form = new Form(new Matiere());

        $form->text('intitule_mat', __('Intitule mat'));

        return $form;
    }
}
