@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row text-center pad-top">
    <div class="col-lg-3 col-xs-6 col-md-3 col-sm-4" >
        <div class="div-square" style="border: 10%;">
            <a href="{{route('programme')}}">
                <i class="fa fa-pencil fa-5x"></i>
                <h4>Gestion des notes</h4>
            </a>
        </div>
    </div>
</div>
@endsection
