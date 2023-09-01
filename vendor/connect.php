<?php
    $connect = mysqli_connect('localhost', 'root', '', 'frogdb');

    if(!$connect){
        die('Error with connection to frogDB');        
    }

?>