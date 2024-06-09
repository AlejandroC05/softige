<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProveedoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Proveedores', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Nombre')->nullable();
            $table->string('Dirección')->nullable();
            $table->string('Producto')->nullable();
            $table->string('Correo')->nullable();
            $table->string('Teléfono')->nullable();
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
        Schema::dropIfExists('Proveedores');
    }
}
