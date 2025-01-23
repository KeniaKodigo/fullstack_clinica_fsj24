@extends('home')

@section('content')
    <div class="container">
        <h1 class="text-center mt-4">Control de citas</h1>
        <a href="{{route('appointments.create')}}" class="btn btn-secondary">Agregar Cita</a>

        <!-- contenedor para el calendario -->
        <div class="mt-4" id="calendar"></div>
    </div>
@endsection
<!-- agregando scripts a la pila -->
@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.10/index.global.min.js"></script>
    {{-- script para darle formato al calendario --}}
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const appointments = @json($appointments);
            console.log(appointments);
            
            const calendarEl = document.getElementById('calendar');
            const calendar = new FullCalendar.Calendar(calendarEl, {
                locale: 'es',
                slotMinTime: '07:00',
                slotMaxTime: '19:00',
                /** 
                 * dayGridMonth = se muestra el calendario por mes
                 * timeGridWeek = se muestre el calendario por semana y la hora
                 * listWeek = lista de eventos por semana
                 * **/
                initialView: 'listWeek',
                events: appointments,
                eventContent: function(arg){
                    const titleEl = document.createElement('div');
                    titleEl.innerHTML = '<strong>' + arg.event.title + '</strong>';

                    const reasonEl = document.createElement('div');
                    reasonEl.innerHTML = 'Razon:' + arg.event.extendedProps.reason;

                    //agregando los elementos al nodo del calendario
                    const arrayOfDomNodes = [titleEl, reasonEl];
                    return { domNodes: arrayOfDomNodes }
                }
            });

            //ejecutamos el calendario
            calendar.render();
        });
    </script>
@endpush