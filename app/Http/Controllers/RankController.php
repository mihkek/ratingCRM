<?php

namespace App\Http\Controllers;

use App\Models\Rank;
use Illuminate\Http\Request;
use Inertia\Inertia;

class RankController extends Controller
{
    public function index()
    {
        return Inertia::render('Rank/Index', [
            'rank' => Rank::all()->map(function($category){
                return [
                    'id' => $category->id,
                    'name' => $category->name
                ];
            })
        ]);
    }

    public function create()
    {
        return Inertia::render('Rank/Create');
    }

    public function edit(Categorylist $category)
    {
        return Inertia::render('Rank/Edit', [
            'rank' => [
                'id' => $category->id,
                'name' => $category->name,

            ],
        ]);
    }
}
