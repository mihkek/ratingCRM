<?php

namespace Database\Seeders;

use App\Models\Account;
use App\Models\Contact;
use App\Models\Organization;
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
        $this->createRoles();

        $account = Account::create(['name' => 'Acme Corporation']);

        // Создаём тестового наставника
        User::factory()->create([
            'account_id' => $account->id,
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
            'account_id' => $account->id,
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
            'account_id' => $account->id,
            'first_name' => 'Костин',
            'last_name' => 'Сергей',
            'surname' => 'Владиславович',
            'email' => 'johndoe@example.com',
            'password' => 'secret',
            'owner' => true,
            'role_id' => 1,
        ]);

        // User::factory(5)->create(['account_id' => $account->id]);

        $organizations = Organization::factory(100)
            ->create(['account_id' => $account->id]);

        Contact::factory(100)
            ->create(['account_id' => $account->id])
            ->each(function ($contact) use ($organizations) {
                $contact->update(['organization_id' => $organizations->random()->id]);
            });
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

    }
}
