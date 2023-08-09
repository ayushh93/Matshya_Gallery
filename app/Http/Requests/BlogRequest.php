<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BlogRequest extends FormRequest
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
            'title' => 'required|string|max:255',
            'image' => 'sometimes |image',
            'author' => 'required|string|max:255',
            'description' => 'required',
            'date' => 'required|date',
            'meta_name' => 'sometimes |max:255',
            'meta_description' => 'sometimes|max:255',
            'meta_keywords' => 'sometimes|max:255',
        ];
    }
}
