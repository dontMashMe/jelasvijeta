<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTagsJunctionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        Schema::create('tag_meal', function(Blueprint $table){
            $table->increments('id');
            $table->integer('meal_id')->unsigned()->index();
            $table->foreign('meal_id')->references('id')->on('meals');

            $table->integer('tag_id')->unsigned()->index();
            $table->foreign('tag_id')->references('id')->on('tags');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tag_meal');
    }
}
