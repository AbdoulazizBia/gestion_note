<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home/domaine', 'GestionController@index')->name('gestion');
Route::get('/note/programme', 'GestionController@show')->name('programme');
Route::get('/note/specialite', 'GestionController@specialite')->name('specialite');
//Route::get('/note/matiere/{specialite_id}', 'GestionController@matieres')->name('matieres');
//Route::get('/note/matiere/{speciailte_id}', 'GestionController@matieres')->name('matiere');
Route::post('/note/matiere/{specialite_id}', 'GestionController@matieres')->name('matiere');
Route::post('/note/enregistrement/', 'GestionController@register')->name('enregistrement');
Route::post('/note/groupe_matiere', 'GestionController@groupes')->name('groupe');
