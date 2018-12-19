<?php

use Illuminate\Database\Seeder;

class TypesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('types')->insert([
            ['name' => 'Cartera'],
            ['name' => 'Bolsa'],
            ['name' => 'Accesorio'],
            ['name' => 'Consmetiquera'],
            ['name' => 'Ropa'],
            ['name' => 'Varia']
        ]);
    }
}
