<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class StudenrsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "first_name" => $this->first_name,
            "last_name" => $this->last_name,
            "surname" => $this->surname,
            "belt" => 'Черный 1 разряд',
            "progress" => 'Второй',
            "mentor" => 'Владислав Павел Юрьевич',
            "trainer" => 'Петрович Андрей Сергеевич',
        ];
    }
}
