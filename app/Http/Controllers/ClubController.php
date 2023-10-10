<?php

namespace App\Http\Controllers;

use App\Models\Club;
use Inertia\Inertia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class ClubController extends Controller
{
    public function index()
    {
        return Inertia::render('Clubs/Index', [
            'clubs' => Club::all()
        ]);
    }

    public function edit(Club $club)
    {
        return Inertia::render('Clubs/Edit', [
            'club' => Club::find($club->id)
        ]);
    }

    public function create()
    {
        return Inertia::render('Clubs/Create');
    }

    public function store(Club $club)
    {
        $club->create(
            request()->validate([
                'name' => ['required', 'max:50'],
            ])
        );

        return redirect()->route('clubs')->with('success', 'Точка создана.');
    }

    public function update(Club $club)
    {
        $club->update(
            request()->validate([
                'name' => ['required', 'max:50'],
            ])
        );

        return redirect()->route('clubs')->with('success', 'Рейтинг обновлен.');
    }

    public function destroy(Club $club)
    {
        $club->delete();

        return redirect()->route('clubs')->with('success', 'Рейтинг удален.');
    }
}
