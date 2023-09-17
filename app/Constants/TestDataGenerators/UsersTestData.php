<?php

namespace App\Constants\TestDataGenerators;

class UsersTestData
{
    public static $DATA = [
        [
            'name' => 'Абдуллаев Умар Обиджанович',
            'belt' => 'Синий с желтой полоской (7 кю)',
            'category' => 'Без разряда',
            'trainer' => '----'
        ],
        [
            'name' => 'Абрамов Дмитрий Александрович',
            'belt' => 'Оранжевый (10 кю)',
            'category' => '1 спортивный',
            'trainer' => '----'
        ],
        [
            'name' => 'Баутин Всеволод Сергеевич',
            'belt' => 'Синий (8 кю)',
            'category' => 'Без разряда',
            'trainer' => 'Скоробогатый Максим Анатольевич'
        ]
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
