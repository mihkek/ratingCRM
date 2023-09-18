<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            ['name' => 'Ученик', 'slug' => 'student'],
            ['name' => 'Наставник', 'slug' => 'mentor'],
            ['name' => 'Админ', 'slug' => 'admin'],
        ];

        foreach ($roles as $role) {
            Role::create($role);
        }
    }
}
