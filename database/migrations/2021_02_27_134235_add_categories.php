<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCategories extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
        //stvori novu tablicu kategorija
        Schema::create('category', function(Blueprint $table){
            $table->increments('id'); 
            $table->string('title');
            //$table->string('slug')->unique()->after('title');
        });
        //dodaj id kategorije kao NULLABLE foreign key u meals [**Jelo može biti bez kategorije, ili može pripadatati samo jednoj kategoriji**]
        Schema::table('meals', function(Blueprint $table){
            $table->integer('category_id')->unsigned()->index()->nullable();
            $table->foreign('category_id')->references('id')->on('category');
        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('category');
        Schema::table('meals', function(Blueprint $table){
            $table->dropColumn('category_id');
        });
    }
}
