<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Tere Gutierrez',
            'email' => 'mariatte@me.com',
            'password' => bcrypt('tev1025'),
        ]);
    }
}
