<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ClientRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'rfc' => ['required', 'string'],
            'name' => ['required', 'string'],
            'email' => ['nullable', 'email:rfc,dns'],
            'phone' => ['nullable', 'numeric'],
            'address' => ['nullable', 'string']
        ];
    }
}
