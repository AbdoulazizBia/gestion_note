<?php

namespace App\Admin\Controllers;

use App\Mat_spe;
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
    protected $title = 'Mat_spe';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Mat_spe());

        $grid->column('id', __('Id'));
        $grid->column('matiere_id', __('Matiere id'));
        $grid->column('specialite_id', __('Specialite id'));
        $grid->column('semestre', __('Semestre'));
        $grid->column('credit', __('Credit'));
        $grid->column('code_mat', __('Code mat'));
        $grid->column('niveau_id', __('Niveau id'));
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
        $show->field('matiere_id', __('Matiere id'));
        $show->field('specialite_id', __('Specialite id'));
        $show->field('semestre', __('Semestre'));
        $show->field('credit', __('Credit'));
        $show->field('code_mat', __('Code mat'));
        $show->field('niveau_id', __('Niveau id'));
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

        $form->number('matiere_id', __('Matiere id'));
        $form->number('specialite_id', __('Specialite id'));
        $form->text('semestre', __('Semestre'));
        $form->number('credit', __('Credit'));
        $form->text('code_mat', __('Code mat'));
        $form->number('niveau_id', __('Niveau id'));

        return $form;
    }
}
