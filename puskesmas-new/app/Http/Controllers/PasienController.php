<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\pasien;
class PasienController extends Controller
{
    public function index(){
        $list_pasien = Pasien::all();
        return view('admin.pasien.index', compact('list_pasien'));
}
}