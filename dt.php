<?php

$dt = new DateTime();
$dt->add(new DateInterval("P1Y"));
echo($dt->format("Y-m-d"));
?>