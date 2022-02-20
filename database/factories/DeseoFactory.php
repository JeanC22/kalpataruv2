<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Deseo>
 */
class DeseoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'texto' => $this->faker->paragraph(),
            'estado' => $this->faker->numberBetween(0,1),
            'usuario_id'=> $this->faker->numberBetween(1,50),
            'likes'=>0,
        ];
    }
}
