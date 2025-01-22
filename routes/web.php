<?php

use App\Http\Controllers\AppointmentController;
use App\Http\Controllers\PatientController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    $dato = "Hola desde php :)";
    // return view('home',['dato_vista'=> $dato]);
    return view('home');
});

// Route::get('/test', function(){
//     return view('pages.patients');
// });

// Route::get('/patients', [PatientController::class, 'index'])->name('getPatients');
// Route::post('/patients', [PatientController::class, 'store'])->name('storePatients');
/**
 * url('/patients'), route('getPatients')
 */

//Agregamos una ruta unica para los metodos del controlador, cada uno tiene un nombre (name) y el tipo de peticion
Route::resource('/patients', PatientController::class);

Route::get('/calendar', [AppointmentController::class, 'index'])->name('appointments.index');