<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class MealTagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Meal::factory()->count(50)->create();

        \App\Models\Tag::factory()->count(20)->create();

        $tags = \App\Models\Tag::all();

        \App\Models\Meal::all()->each(function($meal) use ($tags){
            $meal->tags()->attach(
                $tags->random(rand(1,3))->pluck('id')->toArray()
            );
        });
    }
}
