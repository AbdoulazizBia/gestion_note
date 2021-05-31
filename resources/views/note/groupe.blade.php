@extends('layouts.app')

@section('content')

<div class="container">
    <br><br>
    <div class="list-group col-md-6">
        <form action="{{Url('/note/enregistrement_groupe')}}" method="post">
            @csrf
            <br>
            @foreach($nom_groupe as $key => $n)
                <p class="font-weight-bolder">Groupe : {{$n}}</p>
                <input type="hidden" value="{{$key}}" name="id_groupe">
            @endforeach
            <table class="table">
                <thead>
                <tr>

                    <th><p class="font-weight-bolder" style="font-size: large; font-weight: bold;">Matières</p></th>
                    <th><p class="font-weight-bolder" style="font-size: medium; font-weight: bold;">Semestre</p></th>
                </tr>
                </thead>
                <tbody>
                @foreach($groupes as $grp)
                    <input type="hidden" name="id_mat_spe" value="{{$grp->id}}">
                    <tr>
                        <td>
                            <input class="" type="checkbox" value="{{$grp->intitule_mat}}" name="matiere[{{$grp->matiere_id}}]" id="matiere">

                            <label class="">
                                {{$grp->intitule_mat}}
                            </label>
                        </td>

                        <td>
                            {{$grp->semestre}}
                            <input type="hidden" value="{{$grp->semestre}}" name="semestre-{{$grp->matiere_id}}">
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            <button class="btn btn-primary btn-lg" type="submit">Enregistrer</button>
        </form>
    </div>

    <div class="list-group col-md-6">

    </div>
</div>

@endsection