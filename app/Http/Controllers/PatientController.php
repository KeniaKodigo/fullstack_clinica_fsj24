<?php

namespace App\Http\Controllers;

use App\Models\Patient;
use Illuminate\Http\Request;

class PatientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //vamos a obtener los pacientes y ordenarlo de manera descendiente
        $patients = Patient::select('id','name','date_born','phone','email')->orderBy('id','desc')->paginate(5);
        //return view('pages.patients',['patients' => $patients]);
        return view('pages.patients',compact('patients'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //validaciones
        $request->validate([
            'name' => 'required|string|max:50',
            'date_born' => 'required|date_format:Y-m-d',
            'gender' => 'required|in:Masculino,Femenino',
            'address' => 'required|string',
            //validano que el telefono y correo no se repita en la bd
            'phone' => 'required|string|max:20|unique:patients,phone',
            'email' => 'email|nullable|unique:patients,email'
        ]); //directivas en blade @errors, old()

        $patient = new Patient();
        $patient->name = $request->input('name');
        $patient->date_born = $request->input('date_born');
        $patient->gender = $request->input('gender');
        $patient->address = $request->input('address');
        $patient->phone = $request->input('phone');
        $patient->email = $request->input('email');
        $patient->save();

        //redireccionando a la vista de los pacientes
        return redirect()->route('patients.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Patient $patient)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Patient $patient)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Patient $patient)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Patient $patient)
    {
        //
    }
}
