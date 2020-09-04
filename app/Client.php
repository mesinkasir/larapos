<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $primaryKey = 'rfc';
    public $incrementing = false;

    protected $fillable = [
        'rfc', 'name', 'email', 'phone', 'address'
    ];

    // This model can generate 1 or N sales
    public function sales() {
        return $this->hasMany('App\Sale', 'sale_id');
    }


}
