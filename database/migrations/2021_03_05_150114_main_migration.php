<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MainMigration extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meals', function(Blueprint $table){
            $table->increments('id');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('meal_translations', function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('locale')->index();

            $table->unsignedInteger('meal_id');
            $table->unique(['meal_id', 'locale']);

            $table->foreign('meal_id')->references('id')->on('meals')->onDelete('cascade');
            $table->string('title');
            $table->string('description');
        });

        Schema::create('tags', function(Blueprint $table){
            $table->increments('id');
        });

        Schema::create('tag_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('locale')->index();

            $table->unsignedInteger('tag_id');
            $table->unique(['tag_id', 'locale']);
            
            $table->foreign('tag_id')->references('id')->on('tags')->onDelete('cascade');
            $table->string('title');
        });

        Schema::create('categories', function(Blueprint $table){
            $table->increments('id');
        });

        Schema::create('category_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('locale')->index();

            $table->unsignedInteger('category_id');
            $table->unique(['category_id', 'locale']);
            
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->string('title');
        });

        Schema::table('meals', function(Blueprint $table){
            $table->integer('category_id')->unsigned()->index()->nullable();
            $table->foreign('category_id')->references('id')->on('category');
        });

        Schema::create('ingredients', function(Blueprint $table){
            $table->increments('id');
        });

        Schema::create('ingredient_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('locale')->index();

            $table->unsignedInteger('ingredients_id');
            $table->unique(['ingredients_id', 'locale']);
            
            $table->foreign('ingredients_id')->references('id')->on('ingredients')->onDelete('cascade');
            $table->string('title');
        });

        Schema::create('meal_tag', function(Blueprint $table){
            $table->increments('id');
            $table->integer('meal_id')->unsigned()->index();
            $table->foreign('meal_id')->references('id')->on('meals');

            $table->integer('tag_id')->unsigned()->index();
            $table->foreign('tag_id')->references('id')->on('tags');
        });

        Schema::create('ingredient_meal', function(Blueprint $table){
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
        Schema::dropIfExists('meal_tag');
        Schema::dropIfExists('ingredient_meal');
        Schema::dropIfExists('meal_translations');
        Schema::dropIfExists('category_translations');
        Schema::dropIfExists('tag_translations');
        Schema::dropIfExists('meals');
        Schema::dropIfExists('tags');
        Schema::dropIfExists('ingredients');
        
    }
}
