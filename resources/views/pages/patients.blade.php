@extends('home')

@section('content')
    <h1 class="text-center text-primary">Listado de Pacientes</h1>
    {{-- @php
        print_r($patients);
    @endphp --}}

    <div class="container">
        <button type="button" class="btn btn-dark mb-4" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar Paciente</button>

        <table class="table table-striped">
            <thead>
                <th>ID</th>
                <th>Paciente</th>
                <th>Fecha de nacimiento</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th>Acciones</th>
            </thead>
            <tbody>
                @foreach ($patients as $item)
                    <tr>
                        <td>{{$item->id}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->date_born}}</td>
                        <td>{{$item->phone}}</td>
                        <td>{{$item->email}}</td>
                        <td><a href="{{route('patients.edit', $item->id)}}" class="btn btn-warning">Editar</a></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <!-- metodo que nos ayudar a paginar los datos -->
        {{$patients->links()}}
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{route('patients.store')}}" method="POST">
                <!-- generamos un token de seguridad -->
                @csrf
                <div class="modal-body">
                    <label for="">Paciente</label>
                    <input type="text" class="form-control" name="name" value="{{old('name')}}">
                    @error('name')
                        <small class="text-danger fw-bold">{{ $message }}</small>
                    @enderror

                    <label for="">Fecha Nacimiento</label>
                    <input type="date" class="form-control" name="date_born" value="{{old('date_born')}}">
                    @error('date_born')
                        <small class="text-danger fw-bold">{{ $message }}</small>
                    @enderror

                    <label for="">Genero</label>
                    <input type="text" class="form-control" name="gender" value="{{old('gender')}}">
                    @error('gender')
                        <small class="text-danger fw-bold">{{ $message }}</small>
                    @enderror

                    <label for="">Direccion</label>
                    <input type="text" class="form-control" name="address" value="{{old('address')}}">
                    @error('address')
                        <small class="text-danger fw-bold">{{ $message }}</small>
                    @enderror


                    <label for="">Telefono</label>
                    <input type="text" class="form-control" name="phone" value="{{old('phone')}}">
                    @error('phone')
                        <small class="text-danger fw-bold">{{ $message }}</small>
                    @enderror

                    <label for="">Correo</label>
                    <input type="text" class="form-control" name="email" value="{{old('email')}}">
                    @error('email')
                        <small class="text-danger fw-bold">{{ $message }}</small>
                    @enderror
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success">Guardar Datos</button>
                </div>
            </form>
        </div>
        </div>
    </div>
@endsection