<?php
$version='v1';
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
$router->group(['prefix' => 'public/api/'.$version],function() use($router,$version){

    $router->group(['prefix' => 'role'],function() use($router,$version){

        $router->get('/check',$version.'\RoleController@index');
    });

});