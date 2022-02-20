<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Deseo extends Model
{
    use HasFactory;
    // Nombre de la tabla en la bd
    protected $table ="deseos";
    // timestamp
    public $timestamps = false;
    
    public function user(){
        return $this->belongsTo(User::class,'usuario_id','id');
}}
