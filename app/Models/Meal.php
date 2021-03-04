<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Ingredient;
use App\Models\Category;

class Meal extends Model
{
    use HasFactory;
    public function ingredients()
    {
        return $this->belongsToMany(Ingredient::class);
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

}
