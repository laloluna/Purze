<?php

use Illuminate\Database\Seeder;

class SizesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sizes')->insert([
            ['name' => 'N/A'],
            ['name' => 'Mini'],
            ['name' => 'Pequeña'],
            ['name' => 'Mediana'],
            ['name' => 'Grande']
        ]);
    }
}
