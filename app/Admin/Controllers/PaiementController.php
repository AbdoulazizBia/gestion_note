<?php

namespace App\Admin\Controllers;

use App\Paiement_scolarite;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PaiementController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Paiement_scolarite';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Paiement_scolarite());

        $grid->column('id', __('Id'));
        $grid->column('note_id', __('Note'));
        $grid->column('niveau_id', __('Niveau'));
        $grid->column('mat_spe_id', __('Matière'));
        $grid->column('tranche1', __('Tranche1'));
        $grid->column('tranche2', __('Tranche2'));
        $grid->column('tranche3', __('Tranche3'));
        $grid->column('tranche4', __('Tranche4'));
        $grid->column('tranche5', __('Tranche5'));
        $grid->column('cache', __('Cache'));
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
        $show = new Show(Paiement_scolarite::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('note_id', __('Note'));
        $show->field('niveau_id', __('Niveau'));
        $show->field('mat_spe_id', __('Matière'));
        $show->field('tranche1', __('Tranche1'));
        $show->field('tranche2', __('Tranche2'));
        $show->field('tranche3', __('Tranche3'));
        $show->field('tranche4', __('Tranche4'));
        $show->field('tranche5', __('Tranche5'));
        $show->field('cache', __('Cache'));
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
        $form = new Form(new Paiement_scolarite());

        $form->number('note_id', __('Note'));
        $form->number('niveau_id', __('Niveau'));
        $form->number('mat_spe_id', __('Matière'));
        $form->decimal('tranche1', __('Tranche1'));
        $form->decimal('tranche2', __('Tranche2'));
        $form->decimal('tranche3', __('Tranche3'));
        $form->decimal('tranche4', __('Tranche4'));
        $form->decimal('tranche5', __('Tranche5'));
        $form->switch('cache', __('Cache'));

        return $form;
    }
}
