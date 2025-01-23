<?php

use App\Http\Controllers\AppointmentController;
use App\Http\Controllers\PatientController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

//sanctum
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    //Agregamos una ruta unica para los metodos del controlador, cada uno tiene un nombre (name) y el tipo de peticion
    Route::resource('/patients', PatientController::class);
    Route::get('/calendar', [AppointmentController::class, 'index'])->name('appointments.index');

    Route::get('/appointments', [AppointmentController::class, 'create'])->name('appointments.create');
    Route::post('/appointments', [AppointmentController::class, 'store'])->name('appointments.store');

    //ruta para la vista de home
    Route::get('/home', function(){
        return view('home');
    })->name('home');
});

require __DIR__.'/auth.php';
