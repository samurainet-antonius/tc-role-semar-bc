<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use App\Models\Module;

class Role extends Model{

    protected $table='role';

    protected $fillable = [
        
    ];


    protected $hidden = [
        'id',
        'pivot'
    ];

    public static function withModules($uuid)
    {
        return (new static)->with('module')->where('uuid_karyawan', $uuid)->get();
    }
}