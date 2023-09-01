<?php
    session_start();

    if ($_SESSION['user'])
    {
        header("Location: homepage.php");
    }
?>

<!DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <title>frogauthorization</title>
        <link rel="stylesheet" href="css/authandregstyle.css" type="text/css">
    </head>

    <body>
        <form action="vendor/signin.php" method="post">
            <div class="first">
                <h1>Authorization <br> for Frogs and Toads</h1>
                <label for="login_field">Login: </label>
                <input type="text" name="login" id="login_field" required>
                <label for="password_field">Password: </label>
                <input type="password" name="password" id="password_field" required>
            </div>
            <button type="submit">Log in</button>
            <p>No account? - <a href="register.php"> les go to registration</a></p>
            <p id="msg">
                <?php
                    echo $_SESSION['message'];
                    unset($_SESSION);
                 ?>
            </p>
        </form>
    </body>
</html>