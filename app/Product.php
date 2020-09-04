<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $primaryKey = 'product_id';

    protected $fillable = [
        'name', 'description', 'product_left', 'price', 'cost', 'category_id'
    ];

    // This model can exists in N carts
    public function carts() {
        return $this->belongsToMany('App\Cart', 'carts', 'sale_id');
    }

    public function getGetExtractAttribute() {
        return substr($this->description, 0, 50);
    }
}
