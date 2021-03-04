<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddJunctionTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    //jelo sadrži jedan ili više sastojaka, a taj isti sastojak se može pojaviti u više jela
    //dakle, to je many-to-many relationship 
    public function up()
    {
        Schema::create('meal_ingredients', function(Blueprint $table){
            $table->increments('id');
            $table->integer('meal_id')->unsigned()->index();
            $table->foreign('meal_id')->references('id')->on('meals');

            $table->integer('ingredient_id')->unsigned()->index();
            $table->foreign('ingredient_id')->references('id')->on('ingredients');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meal_ingredients');
    }
}
