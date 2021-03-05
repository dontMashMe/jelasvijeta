<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Language;

class CategoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Category::class;

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
                'title' => 'kategorija'.$counter.' na '.$lang.' jeziku.'
            ];
        }
        $counter++;
        return $data;
    }
}

/*
    /*
        algoritam iznad stvara array prikazan ispod opisan u dokumentaciji laravel-translatable, 
        a u CategorySeeder se poziva funkcija create().
        
        $kategorija = [
            'en' => [
                'title' => 'Kategorija 1 na eng'
            ],
            'hr' => [
                'title' => 'Kategorija 1 na hr'
            ]
        ];
        Category::create($kategorija);
        
*/


