<?php

namespace Database\Seeders;

use App\Models\ClubRating;
use Illuminate\Database\Seeder;

class ClubRatingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $clubRating = [
            ['name' => 'Зенит', 'first' => '21', 'second' => '14', 'third' => '8', 'total' => '46'],
            ['name' => 'Краснодар', 'first' => '16', 'second' => '12', 'third' => '7', 'total' => '40'],
            ['name' => 'Ростов', 'first' => '14', 'second' => '10', 'third' => '6', 'total' => '35'],
            ['name' => 'Локомотив', 'first' => '10', 'second' => '8', 'third' => '4', 'total' => '30']
        ];

        foreach ($clubRating as $club) {
            ClubRating::create($club);
        }
    }
}
