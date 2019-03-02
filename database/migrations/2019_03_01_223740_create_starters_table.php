<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStartersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('starters', function (Blueprint $table) {
            $table->increments('id'); 
            $table->string('OrderNumber');
            $table->string('FoodName');
            $table->string('HelpText')->nullable();
            $table->decimal('Small',5,2);
            $table->decimal('Large',5,2);
            $table->integer('Recommended');
            $table->unsignedInteger('HeadDishes_Id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('starters');
    }
}
