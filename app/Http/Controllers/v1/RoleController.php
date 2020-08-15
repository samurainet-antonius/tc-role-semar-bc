<?php
namespace App\Http\Controllers\v1;
use Laravel\Lumen\Routing\Controller as BaseController;
use \Illuminate\Http\Request;
use App\Models\Role;
use App\Helpers\FuncResponse;


class RoleController extends BaseController{

    use FuncResponse;
    public function __contruct(){
        
    }

    public function index(Request $request){
        $uuid_karyawan = $request->header('x-uuid');
        $roles = Role::where("uuid_karyawan",$uuid_karyawan)->get();

        if(count($roles)<1)
            return $this->responseDataNotFound();
        else
            return $this->responseDataLimitOffset(count($roles),0,0,$roles);
    }

}