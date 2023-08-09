<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required',
            'category_id' => 'required',
            'mrp' => 'required | numeric',
            'sp' => 'required | numeric',
            'description' => 'required',
            // 'gallery.*' => 'image|mimes:jpeg,png|max:10000',
            'image' => 'sometimes | file',
            'is_active' => 'sometimes | boolean',
            'is_popular' => 'sometimes | boolean',
            'is_best_selling' => 'sometimes | boolean',
            'is_new_arrival' => 'sometimes | boolean',
        ];
    }
    public function attributes(): array
{
    return [
        'sp' => 'Selling price',
        'mrp' => 'Marked Price',
        'category_id' => 'Category',
    ];
}
}
