<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BeltSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('belts')->insert([
            'name' => 'Белый (0 кю)',
        ]);
        DB::table('belts')->insert([
            'name' => 'Желтый (6 кю)',
        ]);
        DB::table('belts')->insert([
            'name' => 'Желтый с зеленой полоской',
        ]);
        DB::table('belts')->insert([
            'name' => 'Зеленый (4 кю)',
        ]);
        DB::table('belts')->insert([
            'name' => 'Коричневый (2 кю)',
        ]);
        DB::table('belts')->insert([
            'name' => 'Оранжевый (10 кю)',
        ]);
        DB::table('belts')->insert([
            'name' => 'Синий (8 кю)',
        ]);
    }
}
