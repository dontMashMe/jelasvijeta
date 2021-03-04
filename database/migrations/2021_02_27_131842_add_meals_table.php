<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddMealsTable extends Migration
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
            $table->string('title');
            $table->text('description');
            $table->string('status');
            $table->timestamps();
        });
        //category, tags, ingredients TO BE ADDED u sljedećim migracijama.  
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meals');
    }
}
