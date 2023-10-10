<?php

namespace App\Http\Controllers;

use App\Models\Tournament;
use Illuminate\Http\Request;
use Inertia\Inertia;

class TournamentController extends Controller
{
    public function index()
    {
        return Inertia::render('Tournaments/Index', [
            'tournaments' => Tournament::all()
        ]);
    }

    public function edit(Tournament $tournament)
    {
        return Inertia::render('Tournaments/Edit', [
            'tournament' => Tournament::find($tournament->id)
        ]);
    }

    public function create()
    {
        return Inertia::render('Tournaments/Create');
    }

    public function store(Tournament $tournament)
    {
        $tournament->create(
            request()->validate([
                'name' => ['required', 'max:50'],
                'date' => ['required'],
            ])
        );

        return redirect()->route('tournaments')->with('success', 'Точка создана.');
    }

    public function update(Tournament $tournament)
    {
        $tournament->update(
            request()->validate([
                'name' => ['required', 'max:50'],
                'date' => ['required'],
            ])
        );

        return redirect()->route('tournaments')->with('success', 'Рейтинг обновлен.');
    }

    public function destroy(Tournament $tournament)
    {
        $tournament->delete();

        return redirect()->route('tournaments')->with('success', 'Рейтинг удален.');
    }
}
