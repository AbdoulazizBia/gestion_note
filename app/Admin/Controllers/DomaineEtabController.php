<?php

namespace App\Admin\Controllers;

use App\Domaine;
use App\Domaine_etab;
use App\Etablissement;
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
        $grid->column('etab_id', __('Etablissement'))->display(function () {
            $etablissements  =  Etablissement::find($this->etab_id);
            return $etablissements->nom_etab;
        });;
        $grid->column('domaine_id', __('Domaine'))->display(function () {
            $domaines  =  Domaine::find($this->domaine_id);
            return $domaines->nom_domaine;
        });;
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
        $show->field('etab_id', __('Etablissement'));
        $show->field('domaine_id', __('Domaine'));
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

        $domaines = ['0'=>'selectionner un domaine'];
        $d = Domaine::all();
        foreach ($d as $domaine){
            $domaines[$domaine->id] = $domaine->nom_domaine;
        }

        $etablissements = ['0'=>'selectionner un établissement'];
        $e = Etablissement::all();
        foreach ($e as $etablissement){
            $etablissements[$etablissement->id] = $etablissement->nom_etab;
        }
        $form->select('etab_id', __('Etablissement'))->options($etablissements);
        $form->select('domaine_id', __('Domaine'))->options($domaines);

        return $form;
    }
}
