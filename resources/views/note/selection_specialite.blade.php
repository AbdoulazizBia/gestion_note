@extends('layouts.app')

@section('content')
    <?php $tab = []; $tmp = []; $j=0; $tabc = []
       /* foreach ($cycles as $key => $cy){
            $tab[$cy->id] = $cy->nom_cycle;
        }*/
    ?>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <div class="liste-classe col-md-12">
        <ul>
            @foreach($dc as $key => $d)
                <div class="list-group col-md-6" style="">
                <h1 class="page-header" style="color: #0048ab;">{{$key}}</h1>
                @foreach($d as $key1 => $c)
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
                                        foreach ($c as $f){
                                            foreach ($tab as $keytt => $value){
                                                if ($f->nom_filiere == $keytt AND $value == $t){
                                                    for ($i=0; $i<count($c); $i++){
                                                        $tmp[$i] = $f->nom_filiere;
                                                    }
                                                    $tabc = array_unique($tmp);
                                                    //dump($tabc);
                                                ?>
                                <?php break;
                                                }
                                            }
                            //dump($tmp);
                                        }
                                        //dump($tabc);
                                ?>

                            <h3 class="page-item" style="color: green;">{{$tmp[0]}}</h3>
                        @foreach($c as $spe)
                                <?php  ?>
                                @if($spe->nom_filiere == $tmp[0])
                                    <li class="page-link" style="color: #2f1e2e;"><a href="{{route('matiere',[$spe->id])}}" data-toggle="modal" data-target="#specialite" onclick="cycles();"><span>{{$spe->nom_spe}}({{$spe->code_spe}})</span></a></li>
                                        <div class="modal fade" role="dialog" id="specialite">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h3 class="modal-title" style="text-align: center;">Selectionner le niveau</h3>
                                                    </div>
                                                    <form action="{{Url('/note/matiere/'.$spe->id)}}" class="form" method="post" >
                                                        @csrf
                                                        <div class="modal-body">
                                                            <select class="form-control" name="niveau">
                                                                <?php foreach($niveaux as $key => $n){
                                                                for($i=0; $i<count($n); $i++){ ?>
                                                                <option value="{{$n[$i]->id}}">{{$n[$i]->nom_niv}}</option>
                                                                <?php }
                                                                } ?>
                                                            </select>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                                                            <button name="choix_niveau" class="btn btn-primary">OK</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                @endif
                            @endforeach
                        @endforeach
                    <?php  $tab = []; ?>
                @endforeach
                </div>
            @endforeach

        </ul>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            console.log('Bonjour')
        });
        function cycles() {
            var cycle = document.getElementById("select_cycle");
            if(cycle.value == "Licence")
            return 1;
        }
    </script>

@endsection