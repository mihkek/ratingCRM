<?php

namespace App\Http\Controllers;

use App\Http\Resources\StudenrsResource;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class StudentsController extends Controller
{
    public function index()
    {
        $students = User::where('role_id', 3)->get();

        return Inertia::render('Students/Index', [
            'filters' => Request::all('search', 'Имя', 'Пояс'),
            'students' => StudenrsResource::collection($students)
        ]);
    }

    public function create()
    {
        return Inertia::render('Students/Create');
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
        //     'surname' => Request::get('last_name'),
        //     'email' => Request::get('email'),
        //     'password' => Request::get('password'),
        //     'owner' => Request::get('owner'),
        //     'role_id' => 3,
        //     'photo_path' => Request::file('photo') ? Request::file('photo')->store('users') : null,
        // ]);

        return Redirect::route('students')->with('success', 'Ученик успешно создан.');
    }
}
