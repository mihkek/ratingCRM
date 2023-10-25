<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Notification;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;

class NotificationController extends Controller
{
    public function update(Notification $notification)
    {
        $notification->update(['status' => 0]);
    }
}
