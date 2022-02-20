<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Curso extends Model
{
    use HasFactory;

   // Nombre de la tabla en la bd
   protected $table ="cursos";
   // timestamp
   public $timestamps = false;
      
    public function user(){
        return $this->hasMany(User::class,'curso','id');
    }
}
