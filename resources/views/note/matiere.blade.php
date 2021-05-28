@extends('layouts.app')

@section('content')
<div class="container">
        @foreach($specialites as $spe)
            <p class="font-weight-bolder">Spécialité : {{$spe->nom_spe}}</p>
            @foreach($niveaux as $niv)
                <p class="font-weight-bolder">Niveau : {{$niv->nom_niv}}</p>
            @endforeach
            <p class="font-weight-bold">Code : {{$spe->code_spe}}</p>
            <p class="text-left">Cycle / Filiere : {{$spe->nom_cycle}} / {{$spe->nom_filiere}}</p>
        @endforeach
            <br>
            <form action="{{Url('/note/groupe_matiere')}}" method="post">
                @csrf
                @foreach($specialites as $sp)
                    <input type="hidden" name="spe_id" value="{{$sp->id}}">
                @endforeach
                @foreach($niveaux as $n)
                        <input type="hidden" name="niveau" value="{{$n->id}}">
                    @endforeach
                <button type="submit" class="btn btn-primary btn-lg" style="">Groupes matiere</button>
            </form>
            <br>
        <table class="table">
            <thead>
                <th scope="col">Matières</th>
                <th scope="col">Code</th>
                <th scope="col">Crédit</th>
                <th scope="col">Semestre</th>
                <th scope="col">Actions</th>
            </thead>
            <tbody>
                @foreach($mat_spe as $m)
                    <tr>
                        <td>{{$m->intitule_mat}}</td>
                        <td>{{$m->code_mat}}</td>
                        <td>{{$m->credit}}</td>
                        <td>{{$m->semestre}}</td>
                        <td>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#groupe{{$m->code_mat}}">Groupes matiere</button>

                            <div class="modal fade" role="dialog" id="groupe{{$m->code_mat}}">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="modal-title" style="text-align: center;">Groupe Matière</h3>
                                        </div>

                                        <form action="{{Url('/note/groupe_matiere')}}" class="form" method="post" >

                                            @csrf
                                            <div class="modal-body">
                                                <p class="font-weight-bolder">Matière</p><input type="text" name="matiere-{{$m->intitule_mat}}" value="{{$m->intitule_mat}}" class="form-control" ><br>
                                                <p class="font-weight-bolder">Code</p><input type="text" name="code-{{$m->code_mat}}" value="{{$m->code_mat}}" class="form-control" disabled><br>
                                                <p class="font-weight-bolder">Nom groupe</p><input type="text" name="nom-{{$m->code_mat}}" class="form-control"><br>
                                                <input type="hidden" name="idms-{{$m->code_mat}}" value="{{$m->id}}">
                                                <input type="hidden" name="semestre-{{$m->semestre}}" value="{{$m->semestre}}">
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                                                <button name="groupe" class="btn btn-primary" onclick="">Enregistrer</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="btn btn-danger btn-sm" onclick="window.confirm('Voulez-vous supprimer cette matière ?');">Supprimer</button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

    <br><br>

    <div class="list-group col-md-12">
        <form action="{{Url('/note/enregistrement')}}" method="post">
            @csrf
            <button class="btn btn-primary btn-lg" type="submit">Enregistrer</button>

            @foreach($specialites as $spe)
                <input type="hidden" value="{{$spe->id}}" name="spe_id">
            @endforeach

            @foreach($niveaux as $niv)
                <input type="hidden" value="{{$niv->id}}" name="niveau">
            @endforeach

            <table class="table">
                <thead>
                    <tr>
                        <th><p class="font-weight-bolder" style="font-size: large; font-weight: bold;">Matières</p></th>
                        <th><p class="font-weight-bolder" style="font-size: medium; font-weight: bold;">Code</p></th>
                        <th><p class="font-weight-bolder" style="font-size: medium; font-weight: bold;">Crédit</p></th>
                        <th><p class="font-weight-bolder" style="font-size: medium; font-weight: bold;">Semestre</p></th>
                    </tr>
                </thead>

                <tbody>
                        @foreach($matieres as $key => $mat)
                            <tr>
                                <td>
                                    <input class="form-check-input" type="checkbox" value="{{$mat->intitule_mat}}" name="matiere[{{$mat->id}}]" id="matiere">

                                    <label class="form-check-label">
                                        {{$mat->intitule_mat}}
                                    </label>
                                </td>

                                <td>
                                    <input type="text" name="code-{{$mat->intitule_mat}}" class="form-control" style="font-size: medium; font-weight: bold;">
                                </td>

                                <td>
                                    <input type="number" name="credit-{{$mat->intitule_mat}}" class="form-control" style="font-size: medium; font-weight: bold;" min="1" max="30">
                                </td>

                                <td>
                                    <select name="semestre-{{$mat->intitule_mat}}" class="form-control" style="font-size: medium; font-weight: bold;" >

                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                    </select>
                                </td>
                            </tr>
                        @endforeach
                </tbody>
            </table>
        </form>
    </div>
</div>

@endsection