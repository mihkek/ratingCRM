<?php

namespace App\Constants\TestDataGenerators;

class RatingsTestData
{
    public static $DATA = [
        [
            'student' => 'Власов Александр Сергеевич',
            'belt' => 'Синий с желтой полоской (7 кю) 	',
            'rang' => 'Без разряда',
            'trainer' => 'Петросян Артур Араратович',
            'moyashi' => '1,230.00'
        ],
        [
            'student' => 'Бурцев Кирилл Фёдорович',
            'belt' => 'Синий (8 кю)',
            'rang' => 'Без разряда',
            'trainer' => 'Скоробогатый Максим Анатольевич',
            'moyashi' => '790.00'
        ],
        [
            'student' => 'Власова Ксения Сергеевна',
            'belt' => 'Коричневый (2 кю)',
            'rang' => '1 спортивный',
            'trainer' => 'Петросян Артур Араратович',
            'moyashi' => '30.00'
        ],
    ];
    public static $TRAINERS = [
        [
            'name' => 'Петросян Артур Араратович',
            'moyashi' => '596.00'
        ],
        [
            'name' => 'Аланова Диана Сериковна',
            'moyashi' => '533.50'
        ],
        [
            'name' => 'Диргунов Алексей Константинович',
            'moyashi' => ' 	490.20 '
        ],
        [
            'name' => 'Петросян Артур Араратович',
            'moyashi' => '596.00'
        ],
        [
            'name' => 'Аланова Диана Сериковна',
            'moyashi' => '533.50'
        ],
        [
            'name' => 'Диргунов Алексей Константинович',
            'moyashi' => ' 	490.20 '
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
