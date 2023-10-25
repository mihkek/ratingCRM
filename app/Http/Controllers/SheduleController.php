<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Shedule;

class SheduleController extends Controller
{
    public function index()
    {
        return Inertia::render('Shedules/Index', [

        ]);
    }

    public function create()
    {
        return Inertia::render('Shedules/Create', [

        ]);
    }

    public function store()
    {


    }

    public function update()
    {

    }

    public function destroy()
    {

    }

    public function edit()
    {

    }
}
