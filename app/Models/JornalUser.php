<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JornalUser extends Model
{
    use HasFactory;

    protected $fillable = [
        'jornal_id',
        'user_id'
    ];

    public $timestamps = false;
}
