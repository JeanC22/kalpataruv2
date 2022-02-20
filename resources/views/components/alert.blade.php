{{-- Mensajes de error --}}
@if($errors->any())
    @foreach ($errors->all() as $error)
        <div class="alert alert-danger" role="alert">
            {{ $error }}
        </div>
    @endforeach
@endif
{{-- mensajes class  de la session --}}
@if (session('mensaje'))
    <div class="row mt-5" id="alert">
        <div class="col-lg-5 col-lg-offset-4 mt-5">
        </div>
        <div class="correoEnviado col-lg-2 col-lg-offset-6 mt-5 text-center fs-4 ">
            {{session('mensaje')}}
        </div>
</div>
@endif