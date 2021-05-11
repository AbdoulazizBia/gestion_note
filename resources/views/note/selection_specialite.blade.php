@extends('layouts.app')

@section('content')

    <div class="liste-classe col-md-12">
        <ul>
            @foreach($dc as $d)
                <div class="col-md-6">
                    <h1 class="page-header" style="color: #0048ab;">{{$d->nom_domaine}}</h1>
                    <h2 class="page-header" style="color: red;">{{$d->nom_cycle}}</h2>
                    <h4 class="page-header" style="color: #00a65a;">
                        @foreach($fil as $f)
                            <li><a href="">{{$f->nom_filiere}}</a></li>
                        @endforeach
                    </h4>
                </div>
            @endforeach
        </ul>
    </div>

{{--<div class="liste-classe col-md-12">
    <ul>
        @foreach($domaine_cycle as $d)
            @foreach($domaines as $do)
                <div class="col-md-6">
                    <b>Domaines</b>
                    @if($d->domaine_id == $do->id)
                        <h1 class="page-header" style="color: #0048ab;">{{$do->nom_domaine}}</h1>
                    @endif
                        @foreach($cycles as $cy)
                            <div class="col-md-6">
                                <b>Cycles</b>
                                @if($cy->id == $d->cycle_id and $do->id == $d->domaine_id)
                                    <h2 class="page-header" style="color: red;">{{$cy->nom_cycle}}</h2>
                                @endif

                             <b>Filiere</b>
                            @foreach($cycle_filiere as $cf)

                                @foreach($filieres as $f)
                                        <div class="col-md-6">
                                            @if($cf->filiere_id == $f->id && $cy->id==$cf->cycle_id)
                                                <h3 class="page-header" style="color: yellow;">{{$f->nom_filiere}}</h3>
                                            @endif
                                        </div>

                                @endforeach
                            @endforeach
                            </div>
                        @endforeach
                </div>
            @endforeach
        @endforeach
    </ul>
</div>--}}
@endsection