<?php

namespace App\Exports;

use App\Models\Jornal;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;

class ExportJornal implements FromView
{
    private $mentor_id;
    public function __construct(int|null $mentor_id = null)
    {
        $this->mentor_id = $mentor_id;
    }
    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {
        if ($this->mentor_id) {
            $jornals = Jornal::where('mentor_id', $this->mentor_id)->get();
        } else {
            $jornals =  Jornal::all();
        }
        return view('exports.jornalexport', ['jornals' => $jornals]);
    }
}
