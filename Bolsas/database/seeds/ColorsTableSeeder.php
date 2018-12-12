<?php

use Illuminate\Database\Seeder;

class ColorsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('colors')->insert([
            ['name' => 'Azul'],
            ['name' => 'Cafe'],
            ['name' => 'Negra'],
            ['name' => 'Roja'],
            ['name' => 'Rosa'],
            ['name' => 'Blanca'],
            ['name' => 'Palo de rosa'],
            ['name' => 'Gris']
        ]);
    }
}
