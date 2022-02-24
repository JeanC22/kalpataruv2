<x-app-layout>
    <x-slot name="header">
        <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">

        <h2 class="h4 font-weight-bold">
            {{ __('Deseos') }}
        </h2>
    </x-slot>
<div class="container">
    <div class="card shadow bg-light ">
        <div class="card-body bg-white px-5 py-3 border-bottom rounded-top">
            <div class="col-12 col-md-12 col-sm-10 col-s-8">
                <div class="text-center">
                    <h3 class="h3">DESEOS ACEPTADOS</h3>
                    <h3 class="h3">DESEOS PENDIENRES</h3>
                </div>
            </div>
        </div>
    </div>
</div>


</x-app-layout>