<?php

namespace App\Admin\Controllers;

use App\Specialite;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SpecialiteController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Specialite';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Specialite());

        $grid->column('id', __('Id'));
        $grid->column('nom_spe', __('Nom spe'));
        $grid->column('code_spe', __('Code spe'));
        $grid->column('cycle_filiere_id', __('Cycle filiere id'));
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
        $show = new Show(Specialite::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nom_spe', __('Nom spe'));
        $show->field('code_spe', __('Code spe'));
        $show->field('cycle_filiere_id', __('Cycle filiere id'));
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
        $form = new Form(new Specialite());

        $form->text('nom_spe', __('Nom spe'));
        $form->text('code_spe', __('Code spe'));
        $form->number('cycle_filiere_id', __('Cycle filiere id'));

        return $form;
    }
}
