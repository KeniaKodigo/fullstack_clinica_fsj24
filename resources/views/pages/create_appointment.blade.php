@extends('home')

@section('content')
    <div class="container">
        <h1>Registro de Citas</h1>
        <form action="{{route('appointments.store')}}" method="POST">
            @csrf
            <label for="">Selecciona el paciente</label>
            <select name="patient" class="form-control">
                @foreach ($patients as $element)
                    <option value="{{$element->id}}">{{$element->patient}}</option>
                @endforeach
            </select>

            <label for="">Selecciona el doctor</label>
            <select name="doctor" class="form-control">
                @foreach ($doctors as $item)
                    <option value="{{$item->id}}">{{$item->doctor}}</option>
                @endforeach
            </select>

            <label for="">Fecha de la cita</label>
            <input type="date" class="form-control" name="date_appointment">

            <label for="">Hora de la cita</label>
            <input type="time" class="form-control" name="time_appointment">

            <label for="">Razon</label>
            <input type="text" class="form-control" name="reason">

            <input type="submit" class="btn btn-success mt-4" value="Registrar Cita">
        </form>
    </div>
@endsection