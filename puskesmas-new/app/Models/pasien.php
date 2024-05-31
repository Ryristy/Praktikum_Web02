<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\pasien;
class pasien extends Model
{
    use HasFactory;
    protected $fillable = ['nama', 'kecamataan_nama'];
}
