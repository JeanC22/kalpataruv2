<x-app-layout>
    <x-slot name="header">
        <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">

        <h2 class="h4 font-weight-bold">
            {{ __('Deseos') }}
        </h2>
    </x-slot>
    <div class="container">
        <div class="card shadow bg-light ">
            <div id="opcionesDeseos" class="card-body bg-white px-5 py-3  rounded-top glowReady">
                <div class="col-12 col-md-12 col-sm-10 col-s-8">
                    <div class="d-flex justify-content-center">
                        <button class="btn-sin ">
                        <a class="nav-link text-dark " onclick="deseosAceptados()">
                            <h3 class="me-5 h3 ">DESEOS ACEPTADOS</h3>
                        </a>
                    </button>
                        <button  class="btn-sin" onclick="deseosEspera()">
                        <a class="nav-link text-dark" >
                            <h3 class="ms-5 h3 ">DESEOS EN ESPERA</h3>
                        </a>
                    </button>
                    </div>
                </div>
            </div>
        </div>
        {{-- deseos aceptado --}}
        <div id="deseosAceptado">
            @foreach (Auth::user()->deseos as $deseo)
            @if ($deseo->estado==1)
            <div class="card  mt-3  ">
                <div class="card-body glowReady px-5 py-3  rounded-top">
                    <div class="col-12 col-md-12 col-sm-10 col-s-8">
                        <div class="col-md-12 fs-4 ">
                            {{-- deseos aceptados --}}
                            {{$deseo->texto}}
                        </div>
                    </div>
                </div>
            </div>
            @endif
            @endforeach
        </div>
        {{-- fin de desos aceptados --}}
        {{-- deseos denegados o espera --}}
        <div id="deseosEspera" class="d-none">
            @foreach (Auth::user()->deseos as $deseo)
            @if ($deseo->estado==0)
            <div class="card shadow bg-light mt-3 ">
                <div class="card-body bg-white glowWait px-5 py-3  rounded-top">
                    <div class="col-12 col-md-12 col-sm-10 col-s-8">
                        <div class="col-md-12 fs-4 ">
                            {{-- deseos aceptados --}}
                            {{$deseo->texto}}
                        </div>
                    </div>
                </div>
            </div>
            @endif
            @endforeach
        </div>
        {{-- fin de deseos dene o espera --}}
    </div>
    <script type="text/javascript">
        // aqui se cambiara la visibilidad de la ventana
        function deseosEspera() {

            var elementAceptado =  document.getElementById('deseosAceptado');
            elementAceptado.className = 'd-none'
            var elementEspera=  document.getElementById('deseosEspera');
            elementEspera.className = 'd-block'
            var elementNav= document.getElementById('opcionesDeseos');
            elementNav.className = 'card-body bg-white px-5 py-3  rounded-top glowWait'
        }
        function deseosAceptados() {

            var elementEspera=  document.getElementById('deseosEspera');
            elementEspera.className = 'd-none'
            var elementAceptado =  document.getElementById('deseosAceptado');
            elementAceptado.className = 'd-block'
            var elementNav= document.getElementById('opcionesDeseos');
            elementNav.className = 'card-body bg-white px-5 py-3  rounded-top glowReady'
        }
    
    </script>
</x-app-layout>
