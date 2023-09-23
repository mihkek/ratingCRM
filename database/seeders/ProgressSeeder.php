<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProgressSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('progress')->insert([
            'progress_name' => 'Учебно-тренировочные соревнования (3 место)',
            'moiashi' => '200',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Зачет №1 (лист 10 кю)',
            'moiashi' => '3232',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Всероссийские соревнования (1 место)',
            'moiashi' => '545',
        ]);
        DB::table('progress')->insert([
            'progress_name' => '2 юношеский разряд (присвоение)',
            'moiashi' => '65',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Знак отличия ГТО (бронза)',
            'moiashi' => '987',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Знак отличия ГТО (золото)',
            'moiashi' => '435',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Международные соревнования (3 место)',
            'moiashi' => '342',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Первенство Муниципального образования/города (2 место',
            'moiashi' => '12',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'МС (Мастер спорта РФ)',
            'moiashi' => '65',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Окончание учебного триместра на "отлично"',
            'moiashi' => '987',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Первенство России (1 место)',
            'moiashi' => '76',
        ]);
        DB::table('progress')->insert([
            'progress_name' => 'Первенство Субъекта Российской Федерации (1 место)',
            'moiashi' => '77',
        ]);
    }
}
