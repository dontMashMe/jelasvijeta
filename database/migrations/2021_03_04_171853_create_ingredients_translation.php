<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIngredientsTranslation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ingredient_translations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('locale')->index();

            $table->unsignedInteger('ingredient_id');
            $table->unique(['ingredient_id', 'locale']);
            
            $table->foreign('ingredient_id')->references('id')->on('ingredients')->onDelete('cascade');
            $table->string('title');
        });

        Schema::table('ingredients', function(Blueprint $table){
            $table->dropColumn('title');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ingredients_translations');
    }
}
