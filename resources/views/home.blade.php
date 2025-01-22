<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- url(), route() -->
    <link rel="stylesheet" href="{{url('/')}}/css/style.css">
    <title>Gestion de Pacientes y Citas</title>
</head>
<body>
    @include('modules.nav')
    @if (Request::is('/'))
        <section class="container">
            <h1 class="text-center mt-5">Bienvenido a la plataforma!</h1>
            {{-- <p class="fw-bold">{{$dato_vista}}</p> --}}
            
            @php
                echo "Hola imprimiendo desde blade y php";
            @endphp
        </section>
    @endif
    
    <!-- creando un contenedor dinamico -->
    <div>
        @yield('content')
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--  seccion de scripts que estan en otra vista  -->
@stack('scripts')
</html>