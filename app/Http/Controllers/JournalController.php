<?php

namespace App\Http\Controllers;

use App\Constants\TestDataGenerators\JournalUsersTestData;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class JournalController extends Controller
{
    public function index()
    {
        return Inertia::render('Journal/Index', [
            'filters' => Request::all('search', 'Имя', 'Пояс'),
            'users' => JournalUsersTestData::generateBigArray()
        ]);
    }

    public function create()
    {
        return Inertia::render('Users/Create');
    }

    public function store()
    {
        // Request::validate([
        //     'first_name' => ['required', 'max:50'],
        //     'last_name' => ['required', 'max:50'],
        //     'email' => ['required', 'max:50', 'email', Rule::unique('users')],
        //     'password' => ['nullable'],
        //     'owner' => ['required', 'boolean'],
        //     'photo' => ['nullable', 'image'],
        // ]);

        // Auth::user()->account->users()->create([
        //     'first_name' => Request::get('first_name'),
        //     'last_name' => Request::get('last_name'),
        //     'email' => Request::get('email'),
        //     'password' => Request::get('password'),
        //     'owner' => Request::get('owner'),
        //     'photo_path' => Request::file('photo') ? Request::file('photo')->store('users') : null,
        // ]);

        return Redirect::route('users')->with('success', 'Ученик успешно создан.');
    }

    public function edit(User $user)
    {
        return Inertia::render('Admin/Edit', [
            'user' => [
                'id' => $user->id,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'email' => $user->email,
                'owner' => $user->owner,
                'photo' => $user->photo_path ? URL::route('image', ['path' => $user->photo_path, 'w' => 60, 'h' => 60, 'fit' => 'crop']) : null,
                'deleted_at' => $user->deleted_at,
            ],
        ]);
    }

    public function update(User $user)
    {
        if (App::environment('demo') && $user->isDemoUser()) {
            return Redirect::back()->with('error', 'Updating the demo user is not allowed.');
        }

        Request::validate([
            'first_name' => ['required', 'max:50'],
            'last_name' => ['required', 'max:50'],
            'email' => ['required', 'max:50', 'email', Rule::unique('users')->ignore($user->id)],
            'password' => ['nullable'],
            'owner' => ['required', 'boolean'],
            'photo' => ['nullable', 'image'],
        ]);

        $user->update(Request::only('first_name', 'last_name', 'email', 'owner'));

        if (Request::file('photo')) {
            $user->update(['photo_path' => Request::file('photo')->store('users')]);
        }

        if (Request::get('password')) {
            $user->update(['password' => Request::get('password')]);
        }

        return Redirect::back()->with('success', 'User updated.');
    }

    public function destroy(User $user)
    {
        if (App::environment('demo') && $user->isDemoUser()) {
            return Redirect::back()->with('error', 'Deleting the demo user is not allowed.');
        }

        $user->delete();

        return Redirect::back()->with('success', 'User deleted.');
    }

    public function restore(User $user)
    {
        $user->restore();

        return Redirect::back()->with('success', 'User restored.');
    }
}