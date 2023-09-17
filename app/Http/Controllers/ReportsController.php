<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use App\Models\Report;

class ReportsController extends Controller
{
    public function index()
    {
        return Inertia::render('Reports/Index', [
            'reports' => Report::all()->map(function($report){
            	return [
            		'id' => $report->id,
            		'first_name' => $report->first_name,
            		'last_name' => $report->last_name,
            		'surname' => $report->surname,
            	];
            })
           ]);
    }


    public function create()
    {
        return Inertia::render('Reports/Create');
    }

    public function edit(Report $report)
    {
        return Inertia::render('Reports/Edit', [
            'report' => [
                'id' => $report->id,
                'first_name' => $report->first_name,
                'last_name' => $report->last_name,
                'surname' => $report->surname,

            ],
            
        ]);
    }
}
