<?php
    session_start();

    if (!$_SESSION['user'])
    {
        header("Location: /");
    }
?>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Frog & Toad</title>
    <link rel="stylesheet" href="css/homepagestyle.css" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap" rel="stylesheet">
</head>

<body>
    <div class="header">
        <a href="vendor/logout.php" id="left_btn">exit</a>
        <h1 id="title">Frog & Toad</h1>
        <a href="profile.php" id="right_btn">
            <?= $_SESSION['user']['name'] ?>
        </a>
    </div>

    <div class="intro">
            <h1 class="welcome_text">Welcome to the best Website with Frogs and Toads!</h1>
            <h1 class="welcome_text2">ribbit-ribbit or croack... it's really serious choice...</h1>

        <div class="content">
            <div class="frog_left_block">
                <h2 id="count_of_frogs">
                <?php echo $_SESSION['counts']['count_of_frogs'] ?>
                </h2>
            </div>

            <ul id="menu_list">
                <li ><a class="menu_btn" href="#">Ribbit</a></li>
                <li ><a class="menu_btn" href="#" >Frogwiki</a></li>
                <li ><a class="menu_btn" href="#" >Rating</a></li>
            </ul>

            <div class="toad_right_block">
                <h2 id="count_of_toads">
                    <?php echo $_SESSION['counts']['count_of_toads']?>
                </h2>
            </div>  
        </div>
    </div>

    <div class="down">
        <a id ="chanel" href="https://www.youtube.com/@theleshe">by @theleshe</a>
    </div>
</body>