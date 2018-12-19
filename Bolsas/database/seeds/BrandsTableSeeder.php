<?php

use Illuminate\Database\Seeder;

class BrandsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('brands')->insert([
            ['name' => 'Coach'],
            ['name' => 'Columbia'],
            ['name' => 'Calvin Klein'],
            ['name' => 'Guess'],
            ['name' => 'Kipling'],
            ['name' => 'Levis'],
            ['name' => 'Nine West'],
            ['name' => 'Nautica'],
            ['name' => 'Steve Maiden'],
            ['name' => 'Tommy'],
            ['name' => 'Timberland']
        ]);
    }
}
