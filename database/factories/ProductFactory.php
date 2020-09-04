<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $faker->word,
        'description' => $faker->text(50),
        'product_left' => $faker->randomNumber(2),
        'price' => $faker->numberBetween(10, 500),
        'category_id' => $faker->numberBetween(1, 2)
    ];
});
