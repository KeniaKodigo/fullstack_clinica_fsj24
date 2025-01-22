@extends('home')

@section('content')
    <div class="container">
        @php
            echo json_encode($patient, true);
        @endphp
        <h1 class="text-center mt-4">Editar Paciente</h1>

        <form action="{{route('patients.update', $patient->id)}}" method="POST">
            <!-- especificamos que la peticion HTTP de la ruta es de tipo patch -->
            @method('PATCH')
            @csrf
            <label for="">Paciente</label>
            <input type="text" class="form-control" name="name" value="{{ $patient->name }}">
            @error('name')
                <small class="text-danger fw-bold">{{ $message }}</small>
            @enderror

            <label for="">Direccion</label>
            <input type="text" class="form-control" name="address" value="{{ $patient->address }}">
            @error('address')
                <small class="text-danger fw-bold">{{ $message }}</small>
            @enderror


            <label for="">Telefono</label>
            <input type="text" class="form-control" name="phone" value="{{ $patient->phone }}">
            @error('phone')
                <small class="text-danger fw-bold">{{ $message }}</small>
            @enderror

            <label for="">Correo</label>
            <input type="text" class="form-control" name="email" value="{{ $patient->email }}">
            @error('email')
                <small class="text-danger fw-bold">{{ $message }}</small>
            @enderror

            <input type="submit" class="btn btn-dark mt-4" value="Actualizar Datos">
        </form>
    </div>
@endsection