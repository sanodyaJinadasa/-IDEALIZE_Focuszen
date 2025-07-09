<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserBadge extends Model
{
    //

    protected $fillable = [
        'user_id',
        'badge_id',
        'status',
        'awarded_at',
    ];
}
