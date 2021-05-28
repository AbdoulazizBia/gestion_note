<?php

namespace App\Admin\Controllers;

use App\Groupe_ue;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class GroupeUEController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Groupe_ue';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Groupe_ue());

        $grid->column('id', __('Id'));
        $grid->column('nom_groupe', __('Nom'));
        $grid->column('mat_spe_id', __('Matière'));
        $grid->column('semestre', __('Semestre'));
        $grid->column('matiere_mere_id', __('Matiere mere'));
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
        $show = new Show(Groupe_ue::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nom_groupe', __('Nom'));
        $show->field('mat_spe_id', __('Matière'));
        $show->field('semestre', __('Semestre'));
        $show->field('matiere_mere_id', __('Matiere mere'));
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
        $form = new Form(new Groupe_ue());

        $form->number('nom_groupe', __('Nom'));
        $form->number('mat_spe_id', __('Matière'));
        $form->text('semestre', __('Semestre'));
        $form->number('matiere_mere_id', __('Matiere mere'));

        return $form;
    }
}
