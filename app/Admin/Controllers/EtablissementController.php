<?php

namespace App\Admin\Controllers;

use App\Etablissement;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class EtablissementController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Etablissement';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Etablissement());

        $grid->column('id', __('Id'));
        $grid->column('nom_etab', __('Nom etab'));
        $grid->column('adresse_etab', __('Adresse etab'));
        $grid->column('tel_etab', __('Tel etab'));
        $grid->column('email_etab', __('Email etab'));
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
        $show = new Show(Etablissement::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nom_etab', __('Nom etab'));
        $show->field('adresse_etab', __('Adresse etab'));
        $show->field('tel_etab', __('Tel etab'));
        $show->field('email_etab', __('Email etab'));
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
        $form = new Form(new Etablissement());

        $form->text('nom_etab', __('Nom etab'));
        $form->text('adresse_etab', __('Adresse etab'));
        $form->text('tel_etab', __('Tel etab'));
        $form->text('email_etab', __('Email etab'));

        return $form;
    }
}
