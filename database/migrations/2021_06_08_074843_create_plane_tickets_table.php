<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlaneTicketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plane_tickets', function (Blueprint $table) {
            $table->id();
            $table->integer('class_id');


            $table->integer('journey_plane_id')->nullable();
            $table->date('journey_date')->nullable();
            $table->string('journey_from_time')->nullable();
            $table->string('journey_to_time')->nullable();
            $table->integer('journey_price')->nullable();

            $table->integer('return_plane_id')->nullable();
            $table->date('return_date')->nullable();
            $table->string('return_from_time')->nullable();
            $table->string('return_to_time')->nullable();
            $table->integer('return_price')->nullable();

            $table->integer('total_price')->nullable();


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
        Schema::dropIfExists('plane_tickets');
    }
}
