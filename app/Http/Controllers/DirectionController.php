<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\Direction;

class DirectionController extends Controller
{
    public function index()
    {
        return Inertia::render('Directions/Index', [
            'directions' => Direction::all(),
        ]);
    }

    public function create()
    {
        return Inertia::render('Directions/Create');
    }

    public function edit(Direction $direction)
    {
        return Inertia::render('Directions/Edit', [
            'direction' => Direction::find($direction->id),
        ]);
    }

    public function destroy(Direction $direction)
    {
        $direction->delete();

        return redirect()->route('directions')->with('success', 'Направление удалено.');
    }
}
