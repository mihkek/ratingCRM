<?php

namespace App\Services;

use App\Models\PersonalStudentProgress;
use App\Models\User;

class StudentsService
{
    public function getPersonalProgress(int $user_id)
    {
        return PersonalStudentProgress::where('user_id', $user_id)->first();
    }
    public function savePersonalProgress(int $user_id, string $value)
    {
        $row = PersonalStudentProgress::where('user_id', $user_id)->first();
        if (!$row) {
            $row = new PersonalStudentProgress();
            $row->user_id = $user_id;
        }
        $row->link = $value;
        $row->save();
    }
}
