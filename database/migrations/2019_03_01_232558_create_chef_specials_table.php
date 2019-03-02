<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChefSpecialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chef_specials', function (Blueprint $table) {
            $table->increments('id');
            $table->string('OrderNumber');
            $table->string('FoodName');
            $table->string('HelpText')->nullable();
            $table->decimal('Price',5,2);
            $table->boolean('Recommended');
            $table->unsignedInteger('HeadDishes_Id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chef_specials');
    }
}
