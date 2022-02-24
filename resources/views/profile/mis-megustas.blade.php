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
                </div>
            </div>
        </div>
    </div>
    <div class="card shadow bg-light mt-3 ">
        <div class="card-body bg-white px-5 py-3 border-bottom rounded-top">
            <div class="col-12 col-md-12 col-sm-10 col-s-8">
                <div class="col-md-12 fs-4 ">
                    {{-- deseos aceptados --}}
                    @foreach (Auth::user()->deseos as $deseo)
                    <form action="{{route('deseo.update',[$deseo])}}" method="post" enctype="multipart/form">
                        @csrf
                        @method('PUT')
                    {{$deseo->texto}} 
                    <div class="text-end">
                    <button type="submit"  class=" btn-sin text-black"><div class="heart">❤</div></button>
                </div>
                </form>
                     @endforeach
                </div>
            </div>
        </div>
    </div>
    
<script type="text/javascript">
var animated = false;
$('.heart').click(function(){
  if(!animated){
    $(this).addClass('happy').removeClass('broken');
    animated = true;
  }
  else {
    $(this).removeClass('happy').addClass('broken');
    animated = false;
  }
}); 
</script>



</x-app-layout>