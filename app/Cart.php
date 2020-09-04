<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected  $table = 'carts';

    protected $primaryKey = ['sale_id', 'product_id'];

    public $incrementing = false;

    protected $fillable = [
        'sale_id', 'product_id','amount', 'created'
    ];

    //This model can have one or many sales
    public function sales() {
        return $this->hasMany('App\Sale', 'sale_id', 'sale_id');
    }

    //This model can have one or many products
    public function products() {
        return $this->hasMany('App\Product', 'product_id', 'product_id');
    }
}
