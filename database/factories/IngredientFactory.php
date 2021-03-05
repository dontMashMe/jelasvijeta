<?php

namespace Database\Factories;

use App\Models\Ingredient;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Language;

class IngredientFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Ingredient::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        static $counter = 1; //counter bi se ponovno settao na 1 bez keyword static
        $languages = Language::pluck('lang');
        $data = array();
        foreach($languages as $lang){
            $data[$lang] = [
                'title' => 'Sastojak '.$counter.' na '.$lang.' jeziku.'
            ];
        }
        $counter++;
        return $data;
    }
}
