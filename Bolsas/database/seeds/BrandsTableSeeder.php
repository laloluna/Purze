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
            ['name' => 'Calvin Klein'],
            ['name' => 'Tommy Hilfiger'],
            ['name' => 'Guess'],
            ['name' => 'Steve Maiden'],
            ['name' => 'Nine West'],
            ['name' => 'Levis'],
            ['name' => 'Columbia'],
            ['name' => 'Timberland']
        ]);
    }
}
