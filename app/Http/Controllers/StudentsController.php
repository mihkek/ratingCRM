<?php

namespace App\Http\Controllers;

use App\Exports\ExportStudents;
use App\Http\Resources\StudenrsResource;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;
use Maatwebsite\Excel\Facades\Excel;

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
        return Inertia::render('Students/Create', [
            'mentors' => User::where('role_id', 2)->get(),
            'trainers' => User::where('role_id', 4)->get(),
        ]);
    }

    public function exportExcel()
    {
        return Excel::download(new ExportStudents, 'Ученики.xlsx');
    }
    public function store()
    {
         Request::validate([
             'first_name' => ['required', 'max:50'],
             'last_name' => ['required', 'max:50'],
             'email' => ['required', 'max:50', 'email', Rule::unique('users')],
             'password' => ['nullable'],
             'mentor' => ['nullable'],
             'trainer' => ['nullable'],
         ]);

         Auth::user()->account->users()->create([
             'first_name' => Request::get('first_name'),
             'last_name' => Request::get('last_name'),
             'email' => Request::get('email'),
             'password' => Request::get('password'),
             'role_id' => 3,
             'mentor' => Request::get('mentor'),
             'trainer' => Request::get('trainer'),
             // 'photo_path' => Request::file('photo') ? Request::file('photo')->store('users') : null,
         ]);

        return Redirect::route('students')->with('success', 'Ученик успешно создан.');
    }
}
