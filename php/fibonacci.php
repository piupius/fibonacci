<?php
  function fibonacci($count){
    $a = 1;
    $b = 0;

    $sequence = $b . ", " . $a;

    for($i = 0; $i < $count; $i++){
      $a += $b;
      $b = $a - $b;
      $sequence .= ', ' . $a;
    }

    return $sequence;
  }