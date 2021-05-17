@extends('layouts.app')

@section('content')
    <?php $tab = []; $tmp = [];?>

    <div class="liste-classe col-md-12">
        <ul>
            @foreach($dc as $key => $d)
                <h1 class="page-header" style="color: #0048ab;">{{$key}}</h1>
                @foreach($d as $key1 => $c)
                    <?php $tmp = $c; ?>
                    @for($i=0; $i<count($c); $i++)
                        <?php
                        $tab[$i] = $c[$i]->nom_cycle;
                        ?>
                    @endfor

                @endforeach
                <?php
                    $tab = array_unique($tab);
                ?>
                @foreach($tab as $t)
                    <h2 class="page-header" style="color: red;">{{$t}}</h2>
                @endforeach
                <?php
                $tab = [];
                ?>
                    {{--@foreach($c as $key2 => $f)
                        @if($f->nom_cycle == $c[$i]->nom_cycle)
                            {{$f->nom_filiere}} <br>
                                @endif
                    @endforeach--}}
                            {{--<div class="col-md-6">
                                    <h3 class="page-header" style="color: #00a65a;">{{$cf[$i]->nom_filiere}}</h3>
                                    <h4 class="page-header" style="color: black;">{{$cf[$i]->nom_spe}}</h4>
                            </div>--}}
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