<?php

namespace App\Http\Controllers;

use App\Constants\TestDataGenerators\ProgressTestData;
use App\Models\Contact;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;
use Carbon\Carbon;

class AchievementsController extends Controller
{
    public function index()
    {
        return Inertia::render('Achievements/Index', [
            'filters' => Request::all('search', 'trashed'),
            'achievements' => ProgressTestData::$DATA,
            'links' => []
        ]);
    }

    public function create()
    {
        return Inertia::render('Achievements/Create', []);
    }

    public function viewone()
    {
        return Inertia::render('Achievements/ViewOne', [
            'filters' => Request::all('search', 'trashed'),
            'achievements' => ProgressTestData::generatePersonalArray(),
            'links' => []
        ]);
    }
    public function store()
    {
        // Auth::user()->account->achievements()->create(
        //     Request::validate([
        //         'first_name' => ['required', 'max:50'],
        //         'last_name' => ['required', 'max:50'],
        //         'organization_id' => ['nullable', Rule::exists('organizations', 'id')->where(function ($query) {
        //             $query->where('account_id', Auth::user()->account_id);
        //         })],
        //         'email' => ['nullable', 'max:50', 'email'],
        //         'phone' => ['nullable', 'max:50'],
        //         'address' => ['nullable', 'max:150'],
        //         'city' => ['nullable', 'max:50'],
        //         'region' => ['nullable', 'max:50'],
        //         'country' => ['nullable', 'max:2'],
        //         'postal_code' => ['nullable', 'max:25'],
        //     ])
        // );

        return Redirect::route('achievements')->with('success', 'Данные успешно сохранены.');
    }

    public function edit(Contact $contact)
    {
        return Inertia::render('Achievements/Edit', [
            'contact' => [
                'id' => $contact->id,
                'first_name' => $contact->first_name,
                'last_name' => $contact->last_name,
                'organization_id' => $contact->organization_id,
                'email' => $contact->email,
                'phone' => $contact->phone,
                'address' => $contact->address,
                'city' => $contact->city,
                'region' => $contact->region,
                'country' => $contact->country,
                'postal_code' => $contact->postal_code,
                'deleted_at' => $contact->deleted_at,
            ],
        ]);
    }

    public function update(Contact $contact)
    {
        $contact->update(
            Request::validate([
                'first_name' => ['required', 'max:50'],
                'last_name' => ['required', 'max:50'],
                'email' => ['nullable', 'max:50', 'email'],
                'phone' => ['nullable', 'max:50'],
                'address' => ['nullable', 'max:150'],
                'city' => ['nullable', 'max:50'],
                'region' => ['nullable', 'max:50'],
                'country' => ['nullable', 'max:2'],
                'postal_code' => ['nullable', 'max:25'],
            ])
        );

        return Redirect::back()->with('success', 'Contact updated.');
    }

    public function destroy(Contact $contact)
    {
        $contact->delete();

        return Redirect::back()->with('success', 'Contact deleted.');
    }

    public function restore(Contact $contact)
    {
        $contact->restore();

        return Redirect::back()->with('success', 'Contact restored.');
    }
}
