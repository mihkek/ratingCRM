<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->unsignedBigInteger('mentor_id')->nullable();
            $table->unsignedBigInteger('trainer_id')->nullable();
            $table->unsignedBigInteger('direction_id')->nullable();
            $table->unsignedBigInteger('group_id')->default(0);
            $table->unsignedBigInteger('branch_id')->nullable();
            $table->unsignedBigInteger('hall_id')->nullable();
            $table->string('individual_activity')->nullable();
            $table->boolean('showDropdown');
            $table->date('activity_date')->nullable();
            $table->time('activity_time')->nullable();
            $table->json('data')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('mentor_id');
            $table->dropColumn('trainer_id');
            $table->dropColumn('direction_id');
            $table->dropColumn('group_id');
            $table->dropColumn('activity_date');
            $table->dropColumn('activity_time');
            $table->dropColumn('data');
        });
    }
}
