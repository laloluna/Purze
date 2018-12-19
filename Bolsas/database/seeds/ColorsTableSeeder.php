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
            ['name' => 'Blanca'],
            ['name' => 'Beige'],
            ['name' => 'Cafe'],
            ['name' => 'Gris'],
            ['name' => 'Negra'],
            ['name' => 'Naranja'],
            ['name' => 'Palo de rosa'],
            ['name' => 'Roja'],
            ['name' => 'Rosa'],
            ['name' => 'Verde']
        ]);
    }
}
