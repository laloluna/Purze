<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('items', function (Blueprint $table) {
            $table->increments('id');
            $table->double('dollar', 12, 4);
            $table->integer('place_id')->unsigned();
            $table->foreign('place_id')->references('id')->on('places')->onDelete('cascade');
            $table->double('price_usd', 12, 4);
            $table->double('cost_usd', 12, 4);
            $table->double('price_final', 12, 4);
            $table->double('cost_final', 12, 4);
            $table->double('sell_recomended', 12, 4);
            $table->double('sell_final', 12, 4);
            $table->integer('sold');
            $table->integer('description_id')->unsigned();
            $table->foreign('description_id')->references('id')->on('descriptions')->onDelete('cascade');
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
        Schema::dropIfExists('items');
    }
}
