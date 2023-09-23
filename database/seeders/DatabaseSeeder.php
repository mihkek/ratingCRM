<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;

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
