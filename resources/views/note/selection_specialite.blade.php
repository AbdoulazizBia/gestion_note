@extends('layouts.app')

@section('content')
    <?php $tab = []; $tmp = []; $j=0;
       /* foreach ($cycles as $key => $cy){
            $tab[$cy->id] = $cy->nom_cycle;
        }*/

    ?>

    <div class="liste-classe col-md-12">
        <ul>
            @foreach($dc as $key => $d)
                <div class="list-group col-md-6">
                <h1 class="page-header" style="color: #0048ab;">{{$key}}</h1>
                @foreach($d as $key1 => $c)
                    <?php $tmp = $c; ?>
                    @for($i=0; $i<count($c); $i++)
                        <?php
                        $tab[$c[$i]->nom_filiere] = $c[$i]->nom_cycle;
                        ?>
                    @endfor
                @endforeach

                @foreach($d as $key1 => $c)
                        @foreach(array_unique($tab) as $keyt => $t)
                            <h2 class="page-item" style="color: red;">{{$t}}</h2>
                                <?php
                                for ($i=0; $i<count($c); $i++){
                                        foreach ($c as $f){
                                            foreach ($tab as $keytt => $value){
                                                if ($f->nom_filiere == $keytt AND $value == $t){
                                                    $tmp[$f->id] = $f->nom_filiere;
                                                ?>
                                                    <h3 class="page-header" style="color: #00a65a;">{{$f->nom_filiere}}</h3>
                                                    <li class="page-link" style="color: #2f1e2e;"><a href="">{{$f->nom_spe}}({{$f->code_spe}})</a></li>
                                                 <?php
                                                }
                                            }
                                        }
                                            break;
                                }
                                ?>
                        @endforeach
                    <?php  $tab = []; ?>
                @endforeach

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
                </div>
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