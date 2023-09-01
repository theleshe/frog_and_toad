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
    <title>toadregistration</title>
    <link rel="stylesheet" href="css/authandregstyle.css" type="text/css">
</head>

<body>
    <form action="vendor/signup.php" method="post">
        <div class="first">
            <h1>Registration <br> for Frogs and Toads</h1>
            
            <label for="login_field">Login: </label>
            <input type="text" name="login" id="login_field" required>
            <label for="password_field">Password: </label>
            <input type="password" name="password" id="password_field" required>
            <label for="passwordagain_field">Password again: </label>
            <input type="password" name="password_again" id="passwordagain_field" required>
        </div>
        
        <div class="second">
            <input type="radio" id="radio_frog" name="frog_or_toad" value="frog" required>
            <label for="radio_frog"> Frog</label>

            <input type="radio" id="radio_toad" name="frog_or_toad" value="toad" required>
            <label for="radio_toad"> Toad</label>
        </div>

        <button type="submit">Register</button>
        <p>Have an account? - <a href="/"> les go to log in</a></p>
        
        <p id="msg">
            <?php
                echo $_SESSION['message'] ;
                unset($_SESSION['message']);
            ?>
        </p>
    </form>
</body>
</html>