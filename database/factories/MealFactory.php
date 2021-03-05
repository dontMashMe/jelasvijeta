<?php

namespace Database\Factories;

use App\Models\Meal;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Language;
use App\Models\Category;

class MealFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Meal::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        static $counter = 1;
        $locales = Language::pluck('lang');
        $categories = Category::all();
        $category = $categories->random()->id;
        
        $p = rand(0, 99);
        $data = array(
            'category_id' => $p>25 ? $category : NULL, //75% sanse da ima kategoriju ,
            'status' => 'created'
        );
        foreach($locales as $locale){
            $data[$locale] = [
                'title' => 'Naslov jela '.$counter.' na '.$locale.' jeziku',
                'description' => 'Opis jela '.$counter.' na '.$locale.' jeziku'
            ];
        }
        $counter++;

        return $data;
    }
}
