<?php
    session_start();
    $user = $_SESSION['user'];

    if (!$_SESSION['user'])
    {
        header("Location: /");
    }
?>


<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Frog & Toad</title>
    <link rel="stylesheet" href="css/profilestyle.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap" rel="stylesheet">
</head>

<body>
    <div class="header">
        <a href="vendor/logout.php" id="left_btn">exit</a>
        <h1 id="title">Frog & Toad</h1>
        <a href="homepage.php" id="right_btn">home</a>
    </div>

    <div class="intro">
        <div class="content">
            <div class="content_left">
                <img src="/img/frogtypes/<?= $user["path_to_avatar"] ?>" id="profile_photo">
                <p id="id_and_name"><?= $user['id'] . " : " .  $user['name']?></p>
            </div>
            <div class="content_right">
                <h2 id="frog_type"><?= $user['name_frog']?></h2>
                <p id="frog_description"><?= $user['description']?></p>
            </div>
        </div>
    </div>

    <div class="down">
        <a id ="chanel" href="https://www.youtube.com/@theleshe">by @theleshe</a>
    </div>
</body>