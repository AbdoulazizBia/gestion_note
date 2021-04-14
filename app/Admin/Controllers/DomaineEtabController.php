<?php

namespace App\Admin\Controllers;

use App\Domaine_etab;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class DomaineEtabController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Domaine_etab';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Domaine_etab());

        $grid->column('id', __('Id'));
        $grid->column('etab_id', __('Etab id'));
        $grid->column('domaine_id', __('Domaine id'));
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
        $show = new Show(Domaine_etab::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('etab_id', __('Etab id'));
        $show->field('domaine_id', __('Domaine id'));
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
        $form = new Form(new Domaine_etab());

        $form->number('etab_id', __('Etab id'));
        $form->number('domaine_id', __('Domaine id'));

        return $form;
    }
}
