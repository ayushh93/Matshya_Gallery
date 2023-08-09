<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')->nullable()->constrained()->nullOnDelete();
            $table->string('name');
            $table->string('image');
            $table->integer('mrp');
            $table->integer('sp');
            $table->longText('description');
            $table->boolean('is_active')->default(1);
            $table->boolean('is_popular')->default(0);
            $table->boolean('is_best_selling')->default(0);
            $table->boolean('is_new_arrival')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
