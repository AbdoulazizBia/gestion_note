<?php

namespace App\Admin\Controllers;

use App\Etudiant;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class EtudiantController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Etudiant';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Etudiant());

        $grid->column('id', __('Id'));
        $grid->column('matricule_etud', __('Matricule'));
        $grid->column('nom_etud', __('Nom et prenom'));
        $grid->column('date_naiss', __('Date naissance'));
        $grid->column('lieu_naiss', __('Lieu naissance'));
        $grid->column('region', __('Région'));
        $grid->column('tel_etud', __('Tel'));
        $grid->column('mail_etud', __('Mail'));
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
        $show = new Show(Etudiant::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('matricule_etud', __('Matricule'));
        $show->field('nom_etud', __('Nom et prenom'));
        $show->field('date_naiss', __('Date naissance'));
        $show->field('lieu_naiss', __('Lieu naissance'));
        $show->field('region', __('Region'));
        $show->field('tel_etud', __('Tel'));
        $show->field('mail_etud', __('Mail'));
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
        $form = new Form(new Etudiant());

        $form->text('matricule_etud', __('Matricule'));
        $form->text('nom_etud', __('Nom'));
        $form->date('date_naiss', __('Date naissance'))->default(date('Y-m-d'));
        $form->text('lieu_naiss', __('Lieu naissance'));
        $form->text('region', __('Region'));
        $form->text('tel_etud', __('Tel'));
        $form->text('mail_etud', __('Mail'));

        return $form;
    }
}
