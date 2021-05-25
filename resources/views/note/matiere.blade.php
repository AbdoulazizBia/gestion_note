@extends('layouts.app')

@section('content')
<div class="container">
    @foreach($specialites as $spe)
        <p class="text-left">Spécialité : {{$spe->nom_spe}}</p>
        <p class="text-left">Code : {{$spe->code_spe}}</p>
        <p class="text-left">Cycle / Filiere : </p>
    @endforeach
</div>

<div class="list-group col-md-9">
    <table class="table">
        <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col">Liste de Matières</th>
            </tr>
        </thead>

        <tbody>
            @foreach($matieres as $key => $mat)
                <tr>
                    <th scope="row">{{$key+1}}</th>
                    <td>{{$mat->intitule_mat}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection