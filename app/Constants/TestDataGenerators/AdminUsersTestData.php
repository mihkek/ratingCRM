<?php

namespace App\Constants\TestDataGenerators;

class AdminUsersTestData
{
    public static $DATA = [
        [
            'name' => 'Абдуллаев Умар Обиджанович',
            'belt' => 'Синий с желтой полоской (7 кю)',
            'category' => 'Без разряда',
            'trainer' => '----',
            'date' => '16.05.2018',
            'login' => 'wasan',
            'password' => '********',
            'role' =>  'Default'
        ],
        [
            'name' => 'Абрамов Дмитрий Александрович',
            'belt' => 'Оранжевый (10 кю)',
            'category' => '1 спортивный',
            'trainer' => '----',
            'date' => '23.12.2017',
            'login' => 'roman',
            'password' => '********',
            'role' =>  'Default'
        ],
        [
            'name' => 'Баутин Всеволод Сергеевич',
            'belt' => 'Синий (8 кю)',
            'category' => 'Без разряда',
            'trainer' => 'Скоробогатый Максим Анатольевич',
            'date' => '22.01.2015',
            'login' => 'vladimir2000',
            'password' => '********',
            'role' =>  'Default'
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
