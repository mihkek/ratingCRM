<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class OpenSignalService
{
    private $app_id;
    private $token;

    public function __construct()
    {
        $this->app_id = "30f2b4f8-0452-45ac-926c-e6e4e8191956";
        $this->token = "NmYzZGI0OTUtZGU0Ni00ZjAwLTgyNzMtMDJiZGYzZWM0ZTI3";
    }

    function send_message(Request $request)
    {
        $message = $request->input("message");

        $content = array(
            "en" => $message
        );

        $fields = array(
            "app_id" => $this->app_id,
            "included_segments" => ["All"],
            "data" => [
                "foo" => "bar"
            ],
            "contents" => $content
        );

        $response = Http::withHeaders([
            'Content-Type' => 'application/json; charset=utf-8',
            'Authorization' => 'Basic ' . $this->token
        ])->post('https://onesignal.com/api/v1/notifications', $fields);

        return $response->body();
    }
}
