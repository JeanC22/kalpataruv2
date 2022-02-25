<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ URL::asset('css/app.css') }}" rel="stylesheet">
    <link rel="shortcut icon" href="{{URL::asset('favicon.ico')}}" type="image/x-icon">
    <link rel="icon" href="{{URL::asset('favicon.ico')}}" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="{{ URL::asset('/js/app.js') }}"></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'>
    </script>
        <script src="https://code.iconify.design/2/2.1.2/iconify.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <title>KALPATARUV2</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
</head>

<body>
    <div class="container">
        
        <div class="row">
            <section id="bg-kalpa">
                <div class="arriba"></div>
            </section>
            <header>
                <!-- Navbar -->
                <nav class="navbar navbar-expand-sm navbar-dark">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"><img src="{{URL::asset('/img/logo.png')}}" width="60"
                                srcset=""></a>
                        <a class="navbar-brand" href="#">KALPATARU</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="#deseos">DESEOS</a>
                                </li>
                                @if (Route::has('login'))
                                @auth
                                <li class="nav-item">
                                    <button class="btn-sin"> <a class="nav-link" data-toggle="modal"
                                            data-target="#exampleModalCenter">CREAR DESEO</a></button>
                                </li>
                                @endif
                                @endif
                            </ul>

                            <ul class="navbar-nav navbar-nav me-0">
                                @if (Route::has('login'))
                                @auth 

                                <li class="nav-item">
                                    <a href="{{ route('dashboard') }}" class="nav-link">ACTIVIDADES</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">CERRAR SESIÓN</a>
                                    <form method="POST" id="logout-form" action="{{ route('logout') }}">
                                        @csrf
                                    </form>
                                </li>
                                @else
                                <li class="nav-item">
                                    <a href="{{ route('login') }}" class="nav-link">Acceder</a>
                                </li>
                                @if (Route::has('register'))
                                <li class="nav-item">
                                    <a href="{{ route('register') }}" class="ms-4 nav-link">Register</a>
                                </li>
                                @endif
                                @endif
                                @endif
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            {{-- fin navbar --}}
            <div id="alert">
            @include('components.alert')
            </div>
            {{-- imagen de presentación --}}
            <div data-aos="fade-down">

            <div class="col-md-12 col-sm-12 mt-5 mb-5">
                <img src="{{URL::asset('img/nombremasimagen.png')}}" class="img-fluid mt-5 " max-width="100%"
                    height="auto" srcset="">
            </div>
        </div>
            {{-- fin de imagen de presentación --}}
            {{-- primera parte de contenido --}}
            <div class="col-md-12 col-sm-12 mt-5">
                {{-- titulo --}}
                <div class="d-flex justify-content-center">
                    <div id="animacionTitulo">
                    <h1 >¿Qué es KALPATARU?</h1>
                </div>
                </div>
                {{-- fin de titulo --}}
                <div class="row mt-5">
                    
                    <div class="fs-3 col-md-4 offset-md-1 col-sm-6"><div data-aos="fade-right">
                        Somo un proyecto donde nuetro principal objetivo es exponer los deseos de estudiantes del centro
                        San Luis
                    </div>
                </div>
                    <div class="fs-3 col-md-4 offset-md-2 col-sm-6">
                        <div data-aos="fade-left">
                        para combatir contra el maltrato de genero
                    </div>
                    </div>
                </div>
            </div>
            {{-- fin de primera parte --}}
            {{-- comienzo de deseos --}}
            <div class="col-md-12 col-sm-12 p-5 mt-5">
                <div id="deseos" class="d-flex justify-content-center">
                    <div id="animacionTituloDeseo">
                    <h1>Deseos</h1>
                </div>
                </div>
                <div class="col-6 p-5">
                </div>
                <div class="col-12 text-end">
                    <a class="btn btn-light mb-3 me-1" href="#carouselExampleIndicators2" role="button"
                        data-slide="prev">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                    <a class="btn btn-light mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                        <i class="fa fa-arrow-right"></i>
                    </a>
                </div>
                <div class="col-12 col-md-12  ">
                    <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner col-12 h-100">
                                @php
                                $cantidad = 1;
                                $primera = true;
                                @endphp
                                @foreach ($Deseos as $deseo)
                                @if ($deseo->estado == 1)
                                        @if ($cantidad==1 && $primera==false )
                                        <div class="carousel-item ">
                                            <div class="row">
                                                @endif
                                                @if ($cantidad==1 && $primera==true  )
                                                    <div class="carousel-item active">
                                                    <div class="row">
                                                    {{$primera = false;}}
                                                    @endif

                                                <div class="col-md-4 mb-3">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <h4 class="card-title">{{$deseo->user->name}}</h4> 
                                                            <p class="card-text">{{$deseo->user->curso->nombreCurso}}</p><hr>
                                                            <p class="card-text">{{$deseo->texto}}</p>
                                                            <form action="{{route('deseo.update',[$deseo])}}" method="post" enctype="multipart/form">
                                                                @csrf
                                                                @method('PUT')
                                                                {{$deseo->texto}}
                                                                <div class="text-end">
                                                                    @if (Auth::check())
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
                        
                                                                            <button type="submit" class="btn-sin"><span class="iconify" data-icon="ant-design:heart-outlined" style="color: rgb(175, 62, 62);"></span></button>  {{$deseo->valorar->count()}}
                                                                        </form>
                                                                    @endif
                                                                    @else
                                                                    <span class="iconify" data-icon="ant-design:heart-filled" style="color: rgb(175, 62, 62);"></span>
                                                                @endif
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                @php
                                                $cantidad +=1;
                                                @endphp
                                                @if ($cantidad==7)
                                            </div>
                                            {{-- aqui termina sin crear mas --}}
                                        </div>
                                        @php
                                            $cantidad = 1;
                                        @endphp
                                        @endif
                                    @endif
                                    @endforeach
                                        {{-- prueba --}}

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{-- fin deseo --}}
            </div>
            {{-- fin de segunda parte --}}
        </div>
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
                    <div class="modal-body shadow-ks">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <img src="{{URL::asset('img/logoRegister.png')}}" class="img-fluid mt-2 mb-3 "
                                max-width="100%" height="auto" srcset=""> </div>
                        <h3 class="text-center mb-4">Crear un deseo</h3>
                        {{-- form de envio de deseo --}}
                        <form action="{{route('deseo.store')}}" method="post" onsubmit='return validar()'>
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
    </div>
    </div>
    <div class="d-flex justify-content-end m-3">
    <button id="pararriba" class="btn-sin"><span class="iconify" data-icon="akar-icons:arrow-up" data-width="48" data-height="48"></span>
    </span>
    </button>
    </div>
    <section id="bg-kalpa">
        <div class="arriba"></div>
    </section>
</body>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>
  AOS.init();
</script>
<script>
    setTimeout(dspnone, 3000);
    function dspnone() {
        document.getElementById("alert").className ="d-none";
    }

</script>
<script type='text/javascript'>

    function validar()
    {
        var todoCorrecto = true;
        if(document.getElementById('textdeseo').value.length < 5 ){
            todoCorrecto = false;
}
    
    if(!todoCorrecto){
    alert('el deseo ha de contener mas de 5 palabras');
    }
    return todoCorrecto;
}
</script>    
<script src="https://cdnjs.cloudflare.com/ajax/libs/elevator.js/1.0.0/elevator.min.js" integrity="sha512-ELEM91Vwd3E6fZGIryxLLU1p5NeTeKK8RQzZJBUd6+9pIyYi3/od9clS0/0W3wXHlI29Yh9pC1TpQGBDixlGeg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    window.onload = function()
    {
        var elevador = new Elevator({
            element: document.getElementById("pararriba")
        });
     }
</script>
</html>
