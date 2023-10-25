<?php

namespace App\Http\Controllers;

use App\Constants\TestDataGenerators\JournalUsersTestData;
use App\Exports\ExportJornal;
use App\Models\Jornal;
use App\Models\JornalUser;
use App\Models\User;
use App\Services\OpenSignalService;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Validation\Rule;
use Inertia\Inertia;
use Maatwebsite\Excel\Facades\Excel;

class JournalController extends Controller
{
    public function index()
    {
        $role = Auth::user()->role->slug;
        if ($role == 'mentor') {
            $users = Jornal::where('mentor_id', Auth::user()->id)->with('mentor')->get();
        } else if ($role == 'admin') {
            $users = Jornal::with('mentor')->get();
        } else {
            return response()->status(403);
        }
        return Inertia::render('Journal/Index', [
            'filters' => Request::all('search', 'Имя', 'Пояс'),
            'users' => $users
        ]);
    }

    public function create()
    {
        return Inertia::render('Journal/Create',[
            'mentors' => User::where('role_id', 2)->get(),
            'students' => User::where('role_id', 3)->get(),
        ]);
    }
    public function exportExcel()
    {
        $role = Auth::user()->role->slug;
        if ($role == 'mentor') {
            return Excel::download(new ExportJornal(Auth::user()->id), 'Журнал наставника.xlsx');
        } else if ($role == 'admin') {
            return Excel::download(new ExportJornal(), 'Журнал наставника.xlsx');
        } else {
            return response()->status(403);
        }
    }
    public function store(Request $request, Jornal $jornal)
    {
        $route_points = [1,2];

         $lastAdded = $jornal->create(
            Request::validate([
                'mentor_id' => ['required', 'max:50'],
                'date' => ['required', 'max:50'],
                'description' => ['required', 'max:50']
            ])
        );

        $jornal = Jornal::find($lastAdded->id);
        $jornal->user()->attach($route_points);

        //  foreach ($route_points as $students) {
        //     $jornal->user()->attach($students['id']);
        //   }
             return Redirect::route('admin')->with('success', 'Достижение успешно создано.');
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
