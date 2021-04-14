<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('etudiants', EtudiantController::class);
    $router->resource('inscriptions', InscriptionController::class);
    $router->resource('annee_acas', AnneeController::class);
    $router->resource('specialites', SpecialiteController::class);
    $router->resource('niveaux', NiveauController::class);
    $router->resource('notes', NoteController::class);
    $router->resource('type_notes', TypeNoteController::class);
    $router->resource('paiement_scolarites', PaiementController::class);
    $router->resource('mat_spes', MatSpeController::class);
    $router->resource('matieres', MatiereController::class);
    $router->resource('groupe_ues', GroupeUEController::class);
    $router->resource('cycles', CycleController::class);
    $router->resource('filieres', FiliereController::class);
    $router->resource('cycle_filieres', CycleFiliereController::class);
    $router->resource('domaine_cycles', DomaineCycleController::class);
    $router->resource('etablissements', EtablissementController::class);
    $router->resource('domaine_etabs', DomaineEtabController::class);
    $router->resource('domaines', DomaineController::class);
});
