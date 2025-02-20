<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Chatify\Traits\UUID;

class ChMessage extends Model
{
    use UUID;

    public static function total()
    {
        return self::count(); // Returns the total count of ChMessage records
    }
}
