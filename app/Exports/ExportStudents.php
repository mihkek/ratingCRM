<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;

class ExportStudents implements FromView
{
    public function view(): View
    {
        return view('exports.studentexport', ['students' => User::where('role_id', 3)->get()]);
    }
}
