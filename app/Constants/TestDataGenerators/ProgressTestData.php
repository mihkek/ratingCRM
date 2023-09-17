<?php

namespace App\Constants\TestDataGenerators;

class ProgressTestData
{
    public static $DATA = [
        [
            'student' => 'Батраков Михаил Сакитович',
            'progress_name' => 'Знак отличия ГТО (бронза)',
            'date' => '07/09/2023',
            'moyashi' =>  '50',
            'trainer' => 'Скоробогатый Максим Анатольевич'
        ],
        [
            'student' => 'Иванцов Егор Дмитриевич',
            'progress_name' => 'Знак отличия ГТО (бронза)',
            'date' => '07/09/2023',
            'moyashi' =>  '70',
            'trainer' => 'Аланова Диана Сериковна'
        ],
        [
            'student' => 'Власов Александр Сергеевич',
            'progress_name' => 'Знак отличия ГТО (бронза)',
            'date' => '07/09/2023',
            'moyashi' =>  '20',
            'trainer' => 'Поддубицкая Вероника Дмитриевна'
        ],
    ];
    public static function generatePersonalArray()
    {
        $arr = [];

        for ($i = 0; $i < 10; $i++) {
            array_push($arr, self::$DATA[0]);
        }
        return $arr;
    }
    public static function generateBigArray()
    {
        $arr = [];

        for ($i = 0; $i < 10; $i++) {
            array_push($arr, self::$DATA[0]);
            array_push($arr, self::$DATA[1]);
            array_push($arr, self::$DATA[2]);
        }
        return $arr;
    }
}
