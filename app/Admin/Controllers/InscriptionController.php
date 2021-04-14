<?php

namespace App\Admin\Controllers;

use App\Inscription;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class InscriptionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Inscription';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Inscription());

        $grid->column('id', __('Id'));
        $grid->column('etudiant_id', __('Etudiant id'));
        $grid->column('annee_id', __('Annee id'));
        $grid->column('specialite_id', __('Specialite id'));
        $grid->column('niveau_id', __('Niveau id'));
        $grid->column('user_id', __('User id'));
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
        $show = new Show(Inscription::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('etudiant_id', __('Etudiant id'));
        $show->field('annee_id', __('Annee id'));
        $show->field('specialite_id', __('Specialite id'));
        $show->field('niveau_id', __('Niveau id'));
        $show->field('user_id', __('User id'));
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
        $form = new Form(new Inscription());

        $form->number('etudiant_id', __('Etudiant id'));
        $form->number('annee_id', __('Annee id'));
        $form->number('specialite_id', __('Specialite id'));
        $form->number('niveau_id', __('Niveau id'));
        $form->number('user_id', __('User id'));

        return $form;
    }
}
