<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jornal extends Model
{
    use HasFactory;

    public function mentor()
    {
        return $this->belongsTo(User::class, 'mentor_id');
    }

    public function user()
    {
        // return $this->belongsTo(User::class);
        return $this->belongsToMany(User::class);
    }
}
