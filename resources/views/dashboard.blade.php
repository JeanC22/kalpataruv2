<x-app-layout>
    <x-slot name="header">
        <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">

        <h2 class="h4 font-weight-bold">
            {{ __('KALPATARUV2') }}
        </h2>
    </x-slot>

    <x-jet-welcome />
    <div class="modal fade" id="exampleModalCenter" role="dialog" aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button"
                    class="btn-sin pb-2 close d-flex align-items-center justify-content-center fa-solid fa-xmark"
                    data-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <div class="icon d-flex align-items-center justify-content-center">
                    <img src="{{URL::asset('img/logoRegister.png')}}" class="img-fluid mt-2 mb-3 "
                        max-width="100%" height="auto" srcset=""> 
                </div>
                <h3 class="text-center mb-4">Crear un deseo</h3>
                {{-- form de envio de deseo --}}
                <form action="{{route('deseo.store')}}" method="post">
                    @csrf
                    <div class="input-group mb-3 ">
                        <textarea class="form-control" id="textdeseo" name="textdeseo"
                            aria-label="With textarea"></textarea>
                    </div>
                    <div class="input-group">
                        <button type="submit" class="form-control btn btn-dark rounded px-3">Enviar</button>
                    </div>
            </div>
            </form>
            {{-- fin del form de envio de deseo --}}
        </div>
    </div>
</div>

</x-app-layout>