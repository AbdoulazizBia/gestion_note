<?php

namespace App\Admin\Controllers;

use App\Note;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class NoteController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Note';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Note());

        $grid->column('id', __('Id'));
        $grid->column('note', __('Note'));
        $grid->column('type_note_id', __('Type note'));
        $grid->column('mat_spe_id', __('Matière'));
        $grid->column('inscription_id', __('Etudiant Inscrit'));
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
        $show = new Show(Note::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('note', __('Note'));
        $show->field('type_note_id', __('Type note'));
        $show->field('mat_spe_id', __('Matière'));
        $show->field('inscription_id', __('Etudiant Inscrit'));
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
        $form = new Form(new Note());

        $form->decimal('note', __('Note'));
        $form->number('type_note_id', __('Type note'));
        $form->number('mat_spe_id', __('Matière'));
        $form->number('inscription_id', __('Etudiant Inscrit'));
        $form->number('user_id', __('Utilisateur'));

        return $form;
    }
}
