<?php

namespace Database\Factories;

use App\Models\Meal;
use Illuminate\Database\Eloquent\Factories\Factory;

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

        return [
            'title' => $this->faker->company,
            'description' => ucwords($this->faker->catchPhrase .' '.$this->faker->bs),
            'category_id' => $this->faker->boolean(85) ? mt_rand(1, 50) : null, //85% šanse da generira ID, 15% za NULL 
            'status' => $this->faker->randomElement(['created', 'deleted'])
        ];
    }
}
