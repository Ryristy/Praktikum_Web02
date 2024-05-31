<?php

$nilai = 90;

if($nilai > 90) {
    echo "Nilai kamu ajib";
} else if ($nilai  < 90 || $nilai > 70) { // rentang nilai 70 - 90
    echo "Nilai kamu bagus";
} else { // dibawah 70
    echo "Nilai kamu Lumayan";
}         