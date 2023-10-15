<?php

namespace App\Http\Controllers;

use App\Models\ClubRating;
use App\Models\Tournament;
use App\Models\Club;
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

    public function edit(ClubRating $club_rating)
    {
        return Inertia::render('ClubRating/Edit', [
            'club' => ClubRating::find($club_rating->id)
        ]);
    }

    public function create()
    {
        return Inertia::render('ClubRating/Create', [
            'tournaments' => Tournament::all(),
            'clubs' => Club::all(),
        ]);
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
