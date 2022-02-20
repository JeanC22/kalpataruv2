<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use \App\Models\Deseo;
 

class DeseosSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Deseo::factory()->count(50)->create();
    }
}
