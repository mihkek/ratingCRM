<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Categorylist;

class CategorylistController extends Controller
{
    public function index()
    {
        return Inertia::render('Categorylist/Index', [
            'categorylist' => Categorylist::all()->map(function($category){
            	return [
            		'id' => $category->id,
            		'category_name' => $category->category_name
            	];
            })
           ]);
    }

    public function create()
    {
        return Inertia::render('Categorylist/Create');
    }

    public function edit(Categorylist $category)
    {
        return Inertia::render('Categorylist/Edit', [
            'category' => [
                'id' => $category->id,
                'category_name' => $category->category_name,

            ],
            
        ]);
    }
}
