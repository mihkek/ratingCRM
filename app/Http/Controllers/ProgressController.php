<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Progress;

class ProgressController extends Controller
{
    public function index()
    {
        return Inertia::render('Progress/Index', [
            'progress' => Progress::all()->map(function($progres){
            	return [
            		'id' => $progres->id,
            		'progress_name' => $progres->progress_name,
            		'moiashi' => $progres->moiashi,
            	];
            })
           ]);
    }

     public function create()
    {
        return Inertia::render('Progress/Create');
    }

        public function edit(Progress $progres)
    {
        return Inertia::render('Progress/Edit', [
            'progres' => [
                'id' => $progres->id,
                'progress_name' => $progres->progress_name,
                'moiashi' => $progres->moiashi,

            ],
            
        ]);
    }

}
