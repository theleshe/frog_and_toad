<?php
    session_start();
    require_once 'connect.php';
    
    $login = $_POST['login'];
    $password = $_POST['password'];
    $password_again = $_POST['password_again'];
    $frog_or_toad = $_POST['frog_or_toad'];

    $md5_password = md5($password);
    
    $check_user = mysqli_query($connect, "SELECT * from `users` WHERE (`login` = '$login')");

    if (mysqli_num_rows($check_user) > 0)
    {
        $_SESSION['message'] = 'login is busy';
        header('Location: ../register.php');
    } else {

        if ($frog_or_toad === 'frog'){
            $id_frtoad = rand(1,5);
        } else{
            $id_frtoad = rand(6,10);
        }

        echo $md5_password;
        echo  ' ' . $id_frtoad;
        
        if ($password === $password_again){
            mysqli_query($connect, "INSERT INTO `users` (`id`, `login`, `password`, `id_frtoad`) VALUES (NULL, '$login', '$md5_password', '$id_frtoad')");
            header('Location: /');
        } else{
            $_SESSION['message'] = 'passwords do not match';
            header('Location: ../register.php');
        }
    }

?>