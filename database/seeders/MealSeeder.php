<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Meal;

class MealSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Meal::factory()->count(50)->create();
        //popuni ingredient_meal junction tablicu sa 1-3 sastojka
        $ingreds = \App\Models\Ingredient::all();
        \App\Models\Meal::all()->each(function($meal) use ($ingreds){
            $meal->ingredients()->attach(
                $ingreds->random(rand(1,3))->pluck('id')->toArray()
            );
        });
        //popuni meal_tag junction tablicu sa 1-3 taga
        $tags = \App\Models\Tag::all();
        \App\Models\Meal::all()->each(function($meal) use ($tags){
            $meal->tags()->attach(
                $tags->random(rand(1,3))->pluck('id')->toArray()
            );
        });
    }
}
