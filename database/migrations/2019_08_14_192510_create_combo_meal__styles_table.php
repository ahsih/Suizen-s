<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComboMealStylesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('combo_meal__styles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('OrderNumber');
            $table->string('FoodName');
            $table->string('ChineseName');
            $table->string('HelpText');
            $table->string('ChineseHelpText')->nullable();;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('combo_meal__styles');
    }
}
