<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Belt;

class BeltsController extends Controller
{
    public function index()
    {
        return Inertia::render('Belts/Index', [
            'belts' => Belt::all()->map(function($belt){
            	return [
            		'id' => $belt->id,
            		'name' => $belt->name
            	];
            })
           ]);
    }

        public function create()
    {
        return Inertia::render('Belts/Create');
    }

        public function edit(Belt $belt)
    {
        return Inertia::render('Belts/Edit', [
            'belts' => [
                'id' => $belt->id,
                'name' => $belt->name,

            ],

        ]);
    }
}
