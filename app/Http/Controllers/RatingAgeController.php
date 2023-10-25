<?php

namespace App\Http\Controllers;

use App\Models\RatingAge;
use Illuminate\Http\Request;
use Inertia\Inertia;

class RatingAgeController extends Controller
{
    public function index()
    {
        return Inertia::render('Directions/Index', [
            'directions' => RatingAge::all()
        ]);
    }
}
