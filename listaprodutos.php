<?php
$op = filter_input(INPUT_GET,'op'); 
$id = filter_input(INPUT_GET,'id');

echo 'operacao - '.$op. '| identificacao - '.$id;
?>