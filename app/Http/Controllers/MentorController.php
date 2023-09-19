<?php

namespace App\Http\Controllers;

use App\Http\Resources\MentorsResource;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class MentorController extends Controller
{
    public function index()
    {
        $mentors = User::where('role_id', 2)->get();

        return Inertia::render('Mentors/Index', [
            'mentors' => MentorsResource::collection($mentors)
        ]);
    }

    public function create()
    {
        return Inertia::render('Mentors/Create');
    }

    public function edit(User $mentor)
    {
        return Inertia::render('Mentors/Edit', [
            'mentor' => [
                'id' => $mentor->id,
                'first_name' => $mentor->first_name,
                'last_name' => $mentor->last_name,
                'surname' => $mentor->surname,
            ],

        ]);
    }

    public function store()
    {
        Request::validate([
            'first_name' => ['required', 'max:50'],
            'last_name' => ['required', 'max:50'],
            'surname' => ['required', 'max:50'],
        ]);

        Auth::user()->account->users()->create([
            'first_name' => Request::get('first_name'),
            'last_name' => Request::get('last_name'),
            'surname' => Request::get('last_name'),
            'email' => Request::get('email'),
            'password' => Request::get('password'),
            'owner' => Request::get('owner'),
            'role_id' => 3,
            'photo_path' => Request::file('photo') ? Request::file('photo')->store('users') : null,
        ]);

        return Redirect::route('students')->with('success', 'Ученик успешно создан.');
    }
}
