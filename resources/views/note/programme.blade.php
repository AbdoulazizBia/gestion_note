@extends('layouts.app')

@section('content')

    <div class="row text-center pad-top">
        <div class="col-lg-3 col-xs-6 col-md-3 col-sm-4" >
            <div class="div-square" style="border: 10%;">
                <a href="{{route('specialite')}}">
                    <i class="fa fa-pencil fa-5x"></i>
                    <h4>Programme de spécialité</h4>
                </a>
            </div>
        </div>
    </div>

@endsection