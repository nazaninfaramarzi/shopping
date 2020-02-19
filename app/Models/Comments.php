<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $fillable=['user_id', 'commenttext'];
    public function User(){
        return $thi->belongsTo('App/User', 'id');
    }
}
