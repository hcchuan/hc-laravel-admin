<?php

namespace App\Http\Controllers;

class TestController extends Controller
{
    /**http://la.local.com/test/m1
     */
    public function m1()
    {
        exit(bcrypt('admin'));
    }
}
