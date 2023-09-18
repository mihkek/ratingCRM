<?php

namespace App\Http\Controllers;

use App\Models\Mentor;
use Illuminate\Http\Request;
use Inertia\Inertia;

class MentorController extends Controller
{
    public function index()
    {
        return Inertia::render('Mentors/Index', [
            'mentors' => Mentor::all()->map(function($mentor){
                return [
                    'id' => $mentor->id,
                    'first_name' => $mentor->first_name,
                    'last_name' => $mentor->last_name,
                    'surname' => $mentor->surname,
                ];
            })
        ]);
    }


    public function create()
    {
        return Inertia::render('Mentors/Create');
    }

    public function edit(Mentor $mentor)
    {
        return Inertia::render('Mentors/Edit', [
            'mentor' => [
                'id' => $mentor->id,
                'first_name' => $mentor->first_name,
                'last_name' => $mentor->last_name,
                'surname' => $mentor->surname,

            ],

        ]);
    }
}
