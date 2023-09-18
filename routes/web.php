<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\ContactsController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ImagesController;
use App\Http\Controllers\MentorController;
use App\Http\Controllers\OrganizationsController;
use App\Http\Controllers\RankController;
use App\Http\Controllers\ReportsController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\ProgressController;
use App\Http\Controllers\BeltlistController;
use App\Http\Controllers\CategorylistController;
use App\Http\Controllers\JournalController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\RatingsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Auth
|--------------------------------------------------------------------------
*/
Route::get('login', [AuthenticatedSessionController::class, 'create'])
    ->name('login')
    ->middleware('guest');

Route::post('login', [AuthenticatedSessionController::class, 'store'])
    ->name('login.store')
    ->middleware('guest');

Route::delete('logout', [AuthenticatedSessionController::class, 'destroy'])
    ->name('logout');

/*
|--------------------------------------------------------------------------
| Dashboard
|--------------------------------------------------------------------------
*/
Route::get('/', [DashboardController::class, 'index'])
    ->name('dashboard')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Ученики
|--------------------------------------------------------------------------
*/
Route::get('students', [UsersController::class, 'index'])
    ->name('students')
    ->middleware('auth');

Route::get('students/create', [UsersController::class, 'create'])
    ->name('students.create')
    ->middleware('auth');

Route::post('students', [UsersController::class, 'store'])
    ->name('students.store')
    ->middleware('auth');

Route::get('students/{user}/edit', [UsersController::class, 'edit'])
    ->name('students.edit')
    ->middleware('auth');

Route::put('students/{user}', [UsersController::class, 'update'])
    ->name('students.update')
    ->middleware('auth');

Route::delete('students/{user}', [UsersController::class, 'destroy'])
    ->name('students.destroy')
    ->middleware('auth');

Route::put('students/{user}/restore', [UsersController::class, 'restore'])
    ->name('students.restore')
    ->middleware('auth');


// Журнал достижений


/*
|--------------------------------------------------------------------------
| Наставники
|--------------------------------------------------------------------------
*/
Route::get('mentors', [MentorController::class, 'index'])
    ->name('mentors')
    ->middleware('auth');

Route::get('mentors/create', [MentorController::class, 'create'])
    ->name('mentors.create')
    ->middleware('auth');

Route::get('mentors/{mentor}/edit', [MentorController::class, 'edit'])
    ->name('mentors.edit')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Достижения
|--------------------------------------------------------------------------
*/
Route::get('progress', [ProgressController::class, 'index'])
    ->name('progress')
    ->middleware('auth');

Route::get('progress/create', [ProgressController::class, 'create'])
    ->name('progress.create')
    ->middleware('auth');

Route::get('progress/{progres}/edit', [ProgressController::class, 'edit'])
    ->name('progress.edit')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Пояса
|--------------------------------------------------------------------------
*/
Route::get('beltlist', [BeltlistController::class, 'index'])
    ->name('beltlist')
    ->middleware('auth');

Route::get('beltlist/create', [BeltlistController::class, 'create'])
    ->name('beltlist.create')
    ->middleware('auth');

Route::get('beltlist/{belt}/edit', [BeltlistController::class, 'edit'])
    ->name('beltlist.edit')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Разряды
|--------------------------------------------------------------------------
*/
Route::get('ranks', [RankController::class, 'index'])
    ->name('ranks')
    ->middleware('auth');

Route::get('ranks/create', [RankController::class, 'create'])
    ->name('ranks.create')
    ->middleware('auth');

Route::get('ranks/{rank}/edit', [RankController::class, 'edit'])
    ->name('ranks.edit')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Рейтинги
|--------------------------------------------------------------------------
*/
Route::get('ratings', [RatingsController::class, 'index'])
    ->name('ratings')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Раздел админа
|--------------------------------------------------------------------------
*/
Route::get('admin', [AdminController::class, 'index'])
    ->name('admin')
    ->middleware('auth');

Route::get('admin/create', [AdminController::class, 'create'])
    ->name('admin.create')
    ->middleware('auth');

Route::get('admin/{category}/edit', [AdminController::class, 'edit'])
    ->name('admin.edit')
    ->middleware('auth');

/*
|--------------------------------------------------------------------------
| Раздел наставника
|--------------------------------------------------------------------------
*/
Route::get('journal', [JournalController::class, 'index'])
    ->name('admin')
    ->middleware('auth');

Route::get('journal/create', [JournalController::class, 'create'])
    ->name('admin.create')
    ->middleware('auth');

Route::get('journal/{category}/edit', [JournalController::class, 'edit'])
    ->name('admin.edit')
    ->middleware('auth');








// Organizations

Route::get('organizations', [OrganizationsController::class, 'index'])
    ->name('organizations')
    ->middleware('auth');

Route::get('organizations/create', [OrganizationsController::class, 'create'])
    ->name('organizations.create')
    ->middleware('auth');

Route::post('organizations', [OrganizationsController::class, 'store'])
    ->name('organizations.store')
    ->middleware('auth');

Route::get('organizations/{organization}/edit', [OrganizationsController::class, 'edit'])
    ->name('organizations.edit')
    ->middleware('auth');

Route::put('organizations/{organization}', [OrganizationsController::class, 'update'])
    ->name('organizations.update')
    ->middleware('auth');

Route::delete('organizations/{organization}', [OrganizationsController::class, 'destroy'])
    ->name('organizations.destroy')
    ->middleware('auth');

Route::put('organizations/{organization}/restore', [OrganizationsController::class, 'restore'])
    ->name('organizations.restore')
    ->middleware('auth');


// Contacts


Route::get('contacts', [ContactsController::class, 'index'])
    ->name('contacts')
    ->middleware('auth');

Route::get('contacts/create', [ContactsController::class, 'create'])
    ->name('contacts.create')
    ->middleware('auth');

Route::post('contacts', [ContactsController::class, 'store'])
    ->name('contacts.store')
    ->middleware('auth');

Route::get('contacts/{contact}/edit', [ContactsController::class, 'edit'])
    ->name('contacts.edit')
    ->middleware('auth');

Route::get('contacts/{contact}/view', [ContactsController::class, 'viewone'])
    ->name('contacts.viewone')
    ->middleware('auth');

Route::put('contacts/{contact}', [ContactsController::class, 'update'])
    ->name('contacts.update')
    ->middleware('auth');

Route::delete('contacts/{contact}', [ContactsController::class, 'destroy'])
    ->name('contacts.destroy')
    ->middleware('auth');

Route::put('contacts/{contact}/restore', [ContactsController::class, 'restore'])
    ->name('contacts.restore')
    ->middleware('auth');


// Images

Route::get('/img/{path}', [ImagesController::class, 'show'])
    ->where('path', '.*')
    ->name('image');

