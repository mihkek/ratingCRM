<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Beltlist;

class BeltlistController extends Controller
{
    public function index()
    {
        return Inertia::render('Beltlist/Index', [
            'beltlist' => Beltlist::all()->map(function($belt){
            	return [
            		'id' => $belt->id,
            		'category_name' => $belt->category_name
            	];
            })
           ]);
    }

        public function create()
    {
        return Inertia::render('Beltlist/Create');
    }

        public function edit(Beltlist $belt)
    {
        return Inertia::render('Beltlist/Edit', [
            'belts' => [
                'id' => $belt->id,
                'category_name' => $belt->category_name,

            ],
            
        ]);
    }
}
