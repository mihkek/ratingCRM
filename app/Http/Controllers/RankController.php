<?php

namespace App\Http\Controllers;

use App\Models\Rank;
use Illuminate\Http\Request;
use Inertia\Inertia;

class RankController extends Controller
{
    public function index()
    {
        return Inertia::render('Ranks/Index', [
            'ranks' => Rank::all()->map(function($rank){
                return [
                    'id' => $rank->id,
                    'name' => $rank->name
                ];
            })
        ]);
    }

    public function create()
    {
        return Inertia::render('Ranks/Create');
    }

    public function edit(Rank $rank)
    {
        return Inertia::render('Ranks/Edit', [
            'ranks' => [
                'id' => $rank->id,
                'name' => $rank->name,

            ],
        ]);
    }
}
