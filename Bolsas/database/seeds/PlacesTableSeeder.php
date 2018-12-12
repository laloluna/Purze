<?php

use Illuminate\Database\Seeder;

class PlacesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('places')->insert([
            ['name' => 'McAllen', 'tax' => 1.0825],
            ['name' => 'Seattle', 'tax' => 1.065],
            ['name' => 'California', 'tax' => 1.0725]
        ]);
    }
}
