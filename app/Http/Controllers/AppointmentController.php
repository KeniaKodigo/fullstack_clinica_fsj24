<?php

namespace App\Http\Controllers;

use App\Models\Appointment;
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
}
