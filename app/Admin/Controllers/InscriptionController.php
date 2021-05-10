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
        $grid->column('etudiant_id', __('Etudiant'));
        $grid->column('annee_id', __('Annee académique'));
        $grid->column('specialite_id', __('Specialite'));
        $grid->column('niveau_id', __('Niveau'));
        $grid->column('user_id', __('Utilisateur'));
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
        $show->field('etudiant_id', __('Etudiant'));
        $show->field('annee_id', __('Annee académique'));
        $show->field('specialite_id', __('Specialite'));
        $show->field('niveau_id', __('Niveau'));
        $show->field('user_id', __('Utilisateur'));
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

        $form->number('etudiant_id', __('Etudiant'));
        $form->number('annee_id', __('Annee académique'));
        $form->number('specialite_id', __('Specialite'));
        $form->number('niveau_id', __('Niveau'));
        $form->number('user_id', __('Utilisateur'));

        return $form;
    }
}
