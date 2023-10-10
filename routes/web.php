<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\AchievementsController;
use App\Http\Controllers\ClubController;
use App\Http\Controllers\ClubRatingController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ImagesController;
use App\Http\Controllers\MentorController;
use App\Http\Controllers\RankController;
use App\Http\Controllers\TournamentController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\ProgressController;
use App\Http\Controllers\BeltsController;
use App\Http\Controllers\StudentsController;
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
Route::get('students', [StudentsController::class, 'index'])
    ->name('students')
    ->middleware('auth');


Route::get('students-excel', [StudentsController::class, 'exportExcel'])
    ->name('students-excel')
    ->middleware('auth');


Route::get('students/create', [StudentsController::class, 'create'])
    ->name('students.create')
    ->middleware('auth');

Route::post('students', [StudentsController::class, 'store'])
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
| Клубы
|--------------------------------------------------------------------------
*/
Route::get('clubs', [ClubController::class, 'index'])
    ->name('clubs')
    ->middleware('auth');

Route::get('clubs/create', [ClubController::class, 'create'])
    ->name('clubs.create')
    ->middleware('auth');

Route::get('clubs/{club}/edit', [ClubController::class, 'edit'])
    ->name('clubs.edit')
    ->middleware('auth');

Route::post('clubs', [ClubController::class, 'store'])
    ->name('clubs.store')
    ->middleware('auth');

Route::put('clubs/{club}', [ClubController::class, 'update'])
    ->name('clubs.update')
    ->middleware('auth');

Route::delete('clubs/{club}', [ClubController::class, 'destroy'])
    ->name('clubs.destroy')
    ->middleware('auth');

Route::put('clubs/{club}/restore', [ClubController::class, 'restore'])
    ->name('clubs.restore')
    ->middleware('auth');
/*
|--------------------------------------------------------------------------
| Турниры
|--------------------------------------------------------------------------
*/
Route::get('tournaments', [TournamentController::class, 'index'])
    ->name('tournaments')
    ->middleware('auth');

Route::get('tournaments/create', [TournamentController::class, 'create'])
    ->name('tournaments.create')
    ->middleware('auth');

Route::get('tournaments/{tournament}/edit', [TournamentController::class, 'edit'])
    ->name('tournaments.edit')
    ->middleware('auth');

Route::post('tournaments', [TournamentController::class, 'store'])
    ->name('tournaments.store')
    ->middleware('auth');

Route::put('tournaments/{tournament}', [TournamentController::class, 'update'])
    ->name('tournaments.update')
    ->middleware('auth');

Route::delete('tournaments/{tournament}', [TournamentController::class, 'destroy'])
    ->name('tournaments.destroy')
    ->middleware('auth');

Route::put('tournaments/{tournament}/restore', [TournamentController::class, 'restore'])
    ->name('tournaments.restore')
    ->middleware('auth');


/*
|--------------------------------------------------------------------------
| Рейтинг клубов
|--------------------------------------------------------------------------
*/
Route::get('club_rating', [ClubRatingController::class, 'index'])
    ->name('club_rating')
    ->middleware('auth');

Route::get('club_rating/create', [ClubRatingController::class, 'create'])
    ->name('club_rating.create')
    ->middleware('auth');

Route::get('club_rating/{club_rating}/edit', [ClubRatingController::class, 'edit'])
    ->name('club_rating.edit')
    ->middleware('auth');

Route::post('club_rating', [ClubRatingController::class, 'store'])
    ->name('club_rating.store')
    ->middleware('auth');

Route::put('club_rating/{club_rating}', [ClubRatingController::class, 'update'])
    ->name('club_rating.update')
    ->middleware('auth');

Route::delete('club_rating/{club_rating}', [ClubRatingController::class, 'destroy'])
    ->name('club_rating.destroy')
    ->middleware('auth');

Route::put('club_rating/{club_rating}/restore', [ClubRatingController::class, 'restore'])
    ->name('club_rating.restore')
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
Route::get('belts', [BeltsController::class, 'index'])
    ->name('belts')
    ->middleware('auth');

Route::get('belts/create', [BeltsController::class, 'create'])
    ->name('belts.create')
    ->middleware('auth');

Route::get('belts/{belt}/edit', [BeltsController::class, 'edit'])
    ->name('belts.edit')
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

Route::get('journal-excel', [JournalController::class, 'exportExcel'])
    ->name('journal-excel')
    ->middleware('auth');

Route::get('journal/create', [JournalController::class, 'create'])
    ->name('admin.create')
    ->middleware('auth');

Route::get('journal/{category}/edit', [JournalController::class, 'edit'])
    ->name('admin.edit')
    ->middleware('auth');




// Achievements


Route::get('achievements', [AchievementsController::class, 'index'])
    ->name('achievements')
    ->middleware('auth');

Route::get('achievements/create', [AchievementsController::class, 'create'])
    ->name('achievements.create')
    ->middleware('auth');

Route::post('achievements', [AchievementsController::class, 'store'])
    ->name('achievements.store')
    ->middleware('auth');

Route::get('achievements/{achievement}/edit', [AchievementsController::class, 'edit'])
    ->name('achievements.edit')
    ->middleware('auth');

Route::get('achievements/{achievement}/view', [AchievementsController::class, 'viewone'])
    ->name('achievements.viewone')
    ->middleware('auth');

Route::put('achievements/{achievement}', [AchievementsController::class, 'update'])
    ->name('achievements.update')
    ->middleware('auth');

Route::delete('achievements/{achievement}', [AchievementsController::class, 'destroy'])
    ->name('achievements.destroy')
    ->middleware('auth');

Route::put('achievements/{achievement}/restore', [AchievementsController::class, 'restore'])
    ->name('achievements.restore')
    ->middleware('auth');


// Images

Route::get('/img/{path}', [ImagesController::class, 'show'])
    ->where('path', '.*')
    ->name('image');
