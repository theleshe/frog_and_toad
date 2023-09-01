<?php
    session_start();
    require_once 'connect.php';
    unset($_SESSION['message']);

    $login = $_POST['login'];
    $password = md5($_POST['password']);

    $check_user = mysqli_query($connect, "SELECT * from `users` JOIN `frogtypes` USING(`id_frtoad`) WHERE (`login` = '$login' AND `password` = '$password')");

    if (mysqli_num_rows($check_user) > 0){
        $user = mysqli_fetch_assoc($check_user);

        $_SESSION['user'] = 
        [
            "id" => $user['id'],
            "name" => $user['login'],
            "name_frog" => $user['name'],
            "description" => $user['description'],
            "path_to_avatar" => $user['avatar']
        ];

        $check_count_of_frogs = mysqli_query($connect, "SELECT COUNT(*) FROM `users` WHERE (`id_frtoad` > 0 AND `id_frtoad` < 6)");
        $check_count_of_toads = mysqli_query($connect, "SELECT COUNT(*) FROM `users` WHERE (`id_frtoad` > 5 AND `id_frtoad` < 11)");

        $count_of_frogs = mysqli_fetch_assoc($check_count_of_frogs);
        $count_of_toads = mysqli_fetch_assoc($check_count_of_toads);
        
        $_SESSION['counts'] = 
        [
            "count_of_frogs" => $count_of_frogs['COUNT(*)'],
            "count_of_toads" => $count_of_toads['COUNT(*)']
        ];

        header("Location: ../homepage.php");
    } else 
    {
        $_SESSION['message'] = "Uncorrect data";
        header("Location: /");
    }
?>