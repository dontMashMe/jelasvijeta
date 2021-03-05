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
        //TODO KAD DODES -> SPOJI SVE
        $this->call([
            LanguageSeeder::class,
            CategorySeeder::class,
            IngredientSeeder::class,
            TagSeeder::class,
            MealSeeder::class
        ]);
    
    }
}
