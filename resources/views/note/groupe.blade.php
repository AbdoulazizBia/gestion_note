@extends('layouts.app')

@section('content')

<div class="container">
    <br><br>
    <div class="list-group col-md-6">
        <form action="" method="post">
            @csrf
            <br>
            <table class="table">
                <thead>
                <tr>
                    <th><p class="font-weight-bolder" style="font-size: large; font-weight: bold;">Matières</p></th>
                    <th><p class="font-weight-bolder" style="font-size: medium; font-weight: bold;">Semestre</p></th>
                </tr>
                </thead>
                <tbody>
                @foreach($groupes as $grp)
                    <tr>
                        <td>
                            <input class="form-check-input" type="checkbox" value="{{$grp->intitule_mat}}" name="matiere[{{$grp->intitule_mat}}]" id="matiere">

                            <label class="form-check-label">
                                {{$grp->intitule_mat}}
                            </label>
                        </td>

                        <td>
                            {{$grp->semestre}}
                            <input type="hidden" value="{{$grp->semestre}}" name="semestre-{{$grp->semestre}}">
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