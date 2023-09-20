<?php

namespace App\Constants\TestDataGenerators;

class JournalUsersTestData
{
    public static $DATA = [
        [
            'name' => 'Абдуллаев Умар Обиджанович',
            'date' => '20.06.2023',
            'description' => '•Тимур, Артем. Разминка, растяжка. Основная часть: 6 концовок по 20 сек, свободная работа руками в лапу, свободная работа удары ногами в лапу. Отработка ударов ногами по голове. Набивка в виде боя - 2 раза. ОФП: канат, ролик, берпи, приседания. Помощники: Крачковская, Черноситов.'
        ],
        [
            'name' => 'Абрамов Дмитрий Александрович',
            'date' => '13.09.2023',
            'description' => 'Бурцев Кирилл,Белан Саша,Белашев Стас,Григорян Давид,Мамитов Артур. Разминка,растяжка,техника,повторение ката и пинана,работа в паре (прямой + шито + Лоу кик),набивка'
        ],
        [
            'name' => 'Баутин Всеволод Сергеевич',
            'date' => '20.01.2023',
            'description' => '•Тимур, Ярослав, Артем. Разминка: прыжки на степах, канат + пресс на ролике, бег эстафета, борьба. Основная часть: отработка лоу киков на каждую ногу, отработка защиты и уходы от лоу киков, проработка лоу кика с переводом на голову мая гери. Свободный раунд отработки ударов на голову, отработка защиты от ударов на голову. Между заданиями ОФП. Набивка. Помощники: Крачковская, Черноситов'
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