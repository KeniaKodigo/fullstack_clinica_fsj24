<?php

namespace App\Http\Controllers;

use App\Models\Appointment;
use App\Models\Patient;
use App\Models\User;
use Illuminate\Http\Request;

class AppointmentController extends Controller
{
    //metodo para obtener la informacion de la citas para el calendario
    public function index(){
        /**select patients.name as patient, users.name as doctor, appointments.date_appointment as date,
        appointments.time_appointment as time, appointments.reason 
        from appointments 
        inner join patients on appointments.patient_id = patients.id 
        inner join users on appointments.user_id = users.id where users.rol_id = 1  */

        $data = Appointment::select('patients.name as patient','users.name as doctor','appointments.date_appointment as date','appointments.time_appointment as time','appointments.reason')->join('patients','appointments.patient_id','patients.id')->join('users', 'appointments.user_id','users.id')->where('users.rol_id',1)->get();

        // return response()->json($data);
        //arreglo para mandar los datos con la estructura del calendario
        $appointments = [];
        foreach($data as $item){
            $appointments[] = [
                'title' => $item->patient . ' - ' . $item->doctor,
                'start' => $item->date . 'T' . $item->time,
                'reason' => $item->reason,
            ];
        }

        // return response()->json($appointments);
        return view('pages.calendar', compact('appointments'));
    }

    //metodo que retornara la vista para crear la cita
    public function create(){
        //obtener el id, nombre de los pacientes y de los doctores
        $patients = Patient::select('id','name as patient')->get(); //[]
        //select * from users where rol_id = 1
        $doctors = User::select('id', 'name as doctor')->where('rol_id', 1)->get(); //[]
        return view('pages.create_appointment', compact('patients','doctors'));
    }

    public function store(Request $request){
        $request->validate([
            'patient' => 'required|exists:patients,id',
            'doctor' => 'required|exists:users,id',
            //validamos que la fecha de la cita debe ser posterior a la fecha actual
            'date_appointment' => 'required|date_format:Y-m-d|after_or_equal:today',
            //valida el formato de horas por 24 horas
            'time_appointment' => 'required|date_format:H:i',
            'reason' => 'required|string'
        ]);

        $appointment = new Appointment();
        $appointment->patient_id = $request->input('patient');
        $appointment->user_id = $request->input('doctor');
        $appointment->date_appointment = $request->input('date_appointment');
        $appointment->time_appointment = $request->input('time_appointment');
        $appointment->reason = $request->input('reason');
        $appointment->status = "Pendiente";
        $appointment->save();

        return redirect()->route('appointments.index');

        //user()
    }
}
