<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use DateTime;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Date;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(BeltSeeder::class);
        $this->call(ProgressSeeder::class);
        $this->call(RanksSeeder::class);
        $this->createRoles();
        $this->createUsers();
    }

    public function createRoles()
    {
        $roles = [
            ['name' => 'Админ', 'slug' => 'admin'],
            ['name' => 'Наставник', 'slug' => 'mentor'],
            ['name' => 'Ученик', 'slug' => 'student'],
            ['name' => 'Тренер', 'slug' => 'trainer']
        ];

        foreach ($roles as $role) {
            Role::create($role);
        }
    }

    public function createUsers()
    {
        // Создаём тестового наставника
        User::factory()->create([
            'first_name' => 'Оводков',
            'last_name' => 'Андрей',
            'surname' => 'Юрьевич',
            'email' => 'ovod@example.com',
            'password' => 'secret',
            'owner' => true,
            'role_id' => 2,
        ]);

        // Заполняем тестовый журнал
        $mentor = User::where('role_id', 2)->first();
        DB::table('jornals')->insert([
            'mentor_id' => $mentor->id,
            'date' => new DateTime('20.06.2023'),
            'description' => '•Тимур, Артем. Разминка, растяжка. Основная часть: 6 концовок по 20 сек, свободная работа руками в лапу, свободная работа удары ногами в лапу. Отработка ударов ногами по голове. Набивка в виде боя - 2 раза. ОФП: канат, ролик, берпи, приседания. Помощники: Крачковская, Черноситов.'
        ]);
        DB::table('jornals')->insert([
            'mentor_id' => $mentor->id,
            'date' =>  new DateTime('13.09.2023'),
            'description' => 'Бурцев Кирилл,Белан Саша,Белашев Стас,Григорян Давид,Мамитов Артур. Разминка,растяжка,техника,повторение ката и пинана,работа в паре (прямой + шито + Лоу кик),набивка'
        ]);
        DB::table('jornals')->insert([
            'mentor_id' => $mentor->id,
            'date' =>  new DateTime('20.01.2023'),
            'description' => '•Тимур, Ярослав, Артем. Разминка: прыжки на степах, канат + пресс на ролике, бег эстафета, борьба. Основная часть: отработка лоу киков на каждую ногу, отработка защиты и уходы от лоу киков, проработка лоу кика с переводом на голову мая гери. Свободный раунд отработки ударов на голову, отработка защиты от ударов на голову. Между заданиями ОФП. Набивка. Помощники: Крачковская, Черноситов'
        ]);

        // Создаём тестового ученика
        User::factory()->create([

            'first_name' => 'Марченко',
            'last_name' => 'Алексей',
            'surname' => 'Валентинович',
            'email' => 'vlad@example.com',
            'password' => 'secret',
            'owner' => true,
            'role_id' => 3,
        ]);

        $student = User::where('role_id', 3)->first();

        DB::table('personal_student_progress')->insert([
            'link' => 'www.example.ru',
            'user_id' => $student->id
        ]);
        // Создаём тестового админа
        User::factory()->create([
            'first_name' => 'Костин',
            'last_name' => 'Сергей',
            'surname' => 'Владиславович',
            'email' => 'johndoe@example.com',
            'password' => 'secret',
            'owner' => true,
            'role_id' => 1,
        ]);
    }
}
