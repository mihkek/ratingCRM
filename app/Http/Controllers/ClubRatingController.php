<?php

namespace App\Http\Controllers;

use App\Models\ClubRating;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ClubRatingController extends Controller
{
    public function index()
    {
        return Inertia::render('ClubRating/Index', [
            'clubs' => ClubRating::all()
        ]);
    }

    public function edit(ClubRating $club)
    {
        return Inertia::render('ClubRating/Edit', [
            'club' => ClubRating::find($club->id)
        ]);
    }

    public function create()
    {
        return Inertia::render('ClubRating/Create');
    }

    public function store(ClubRating $club)
    {
        $club->create(
            request()->validate([
                'name' => ['required', 'max:50'],
                'first' => ['nullable'],
                'second' => ['nullable'],
                'third' => ['nullable'],
                'total' => ['nullable'],
            ])
        );

        return redirect()->route('club_rating')->with('success', 'Точка создана.');
    }

    public function update(ClubRating $club)
    {
        $club->update(
            request()->validate([
                'name' => ['required', 'max:50'],
                'first' => ['nullable'],
                'second' => ['nullable'],
                'third' => ['nullable'],
                'total' => ['nullable'],
            ])
        );

        return redirect()->route('club_rating')->with('success', 'Рейтинг обновлен.');
    }

    public function destroy(ClubRating $club)
    {
        $club->delete();

        return redirect()->route('club_rating')->with('success', 'Рейтинг удален.');
    }
}
