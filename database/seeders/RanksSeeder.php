<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RanksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            ['name' => '1 спортивный'],
            ['name' => '1 судейская'],
            ['name' => '1 юношеский'],
            ['name' => '2 спортивный'],
            ['name' => '2 судейская'],
            ['name' => '2 юношеский'],
            ['name' => '3 спортивный'],
            ['name' => '3 юношеский'],
            ['name' => 'КМС'],
            ['name' => 'МС'],
        ];
        $level = 1;
        foreach ($data as $item) {
            DB::table('ranks')->insert([
                'name' => $item['name'],
                'level' => $level,
            ]);
            $level += 1;
        }
    }
}
