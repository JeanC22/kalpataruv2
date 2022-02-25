<x-app-layout>
    <x-slot name="header">
        <link href="{{ URL::asset('/css/app.css') }}" rel="stylesheet">
        <script src="https://code.iconify.design/2/2.1.2/iconify.min.js"></script>

        <h2 class="h4 font-weight-bold">
            {{ __('Mis Votados') }}
        </h2>
    </x-slot>
    <div class="container">
        <div class="card shadow bg-light ">
            <div class="card-body bg-white shadow-k px-5 py-3 rounded-top">
                <div class="col-12 col-md-12 col-sm-10 col-s-8">
                    <div class="text-center">
                        <h3 class="h3">MIS DESEOS VOTADOS</h3>
                    </div>
                </div>
            </div>
        </div>
        {{-- deseos aceptados --}}
        @foreach (Auth::user()->valorar as $deseo)
                <div class="card shadow  mt-3  ">
                    <div class="card-body shadow-k px-5 py-3 rounded-top">
                        <div class="col-12 col-md-12 col-sm-10 col-s-8">
                            <div class="col-md-12 fs-4 ">
                                <form action="{{route('deseo.update',[$deseo])}}" method="post" enctype="multipart/form">
                                    @csrf
                                    @method('PUT')
                                    {{$deseo->texto}}
                                    <div class="text-end">
                                        <button type="submit" class="btn-sin" style="color: red">
                                            @if($deseo->valorar->contains(Auth::user()->id))
                                                <form action="{{route('deseo.destroy',[$deseo])}}" method="post" enctype="multipart/form">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn-sin"><span class="iconify" data-icon="ant-design:heart-filled" style="color: rgb(175, 62, 62);"></span></button>{{$deseo->valorar->count()}}
                                                </form>
                                                @else

                                                <form action="{{route('deseo.update',[$deseo])}}" method="POST" enctype="multipart/form">
                                                    @csrf
                                                    @method('PUT')

                                                    <button type="submit"><span class="iconify" data-icon="ant-design:heart-outlined" style="color: rgb(175, 62, 62);"></span></button>  {{$deseo->valorar->count()}}
                                                </form>
                                            @endif
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        @endforeach

        <script type="text/javascript">
            var animated = false;
            $('.heart').click(function () {
                if (!animated) {
                    $(this).addClass('happy').removeClass('broken');
                    animated = true;
                } else {
                    $(this).removeClass('happy').addClass('broken');
                    animated = false;
                }
            });

        </script>



</x-app-layout>
