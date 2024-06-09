<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDistribuidorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Distribuidor', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Nombres')->nullable();
            $table->string('Direccion')->nullable();
            $table->string('Producto')->nullable();
            $table->string('Telefono')->nullable();
            $table->string('Correo')->nullable();
            $table->string('Pago')->nullable();
            $table->string('Estado')->nullable();
            $table->string('Notas')->nullable();
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
        Schema::dropIfExists('Distribuidor');
    }
}
