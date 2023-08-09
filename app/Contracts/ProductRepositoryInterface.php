<?php

namespace App\Contracts;

use App\Models\Admin\Product;
use App\Http\Requests\ProductRequest;

interface ProductRepositoryInterface
{
    public function indexProduct();

    public function createProduct();

    public function storeProduct(ProductRequest $request);

    public function showProduct(Product $Product);

    public function editProduct(Product $Product);

    public function updateProduct(ProductRequest $request, Product $Product);

    public function destroyProduct(Product $Product);
}
