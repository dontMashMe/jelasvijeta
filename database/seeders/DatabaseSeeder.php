<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        //seed pivot tablicu ingredient_meal sa podacima   
        \App\Models\Meal::factory()->count(50)->create();

        \App\Models\Ingredient::factory()->count(20)->create();

        $ingreds = \App\Models\Ingredient::all();

        \App\Models\Meal::all()->each(function($meal) use ($ingreds){
            $meal->ingredients()->attach(
                $ingreds->random(rand(1,3))->pluck('id')->toArray()
            );
        });

    }
}
