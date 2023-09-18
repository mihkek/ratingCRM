<?php

namespace App\Http\Controllers;

use App\Constants\TestDataGenerators\RatingsTestData;
use Illuminate\Http\Request;
use Inertia\Inertia;

class RatingsController extends Controller
{
    public function index()
    {
        return Inertia::render('Ratings/Index', [
            'ratings' => RatingsTestData::generatePersonalArray(),
            'trainers' => RatingsTestData::$TRAINERS
        ]);
    }
}
