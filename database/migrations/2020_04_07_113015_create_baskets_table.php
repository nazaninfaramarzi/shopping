<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBasketsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('baskets', function(Blueprint $table)
		{
			$table->bigInteger('id')->unsigned()->primary();
			$table->integer('user_id');
			$table->integer('product_id');
			$table->integer('count')->unsigned()->default(1);
			$table->integer('price')->unsigned();
			$table->enum('status', array('0','1'))->default('0');
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
		Schema::drop('baskets');
	}

}
