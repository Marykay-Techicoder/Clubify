<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = [
        'event_name',
        'date',
        'time',
        'location',
        'event_type',
        'description',
        'host',
        'others',
        'image'
    ];
}

