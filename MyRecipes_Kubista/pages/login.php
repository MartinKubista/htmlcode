<!DOCTYPE html>
<head>
<title>MyRecipes</title>
    <meta charset="utf-8"  />
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/fonts.css">  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

</head>

<html>
</head>
<?php
require_once('../scripts/connection.php');
include('../parts/hlava.php');
?>
<body>
<?php $message = isset($_GET["message"]) ? $_GET["message"] : "";?>
   <div class="login-body">
   <div class="container">
        <div class="padding-setting">
            <div class="form login">
                <span class="title">Prihlásenie</span>
                <form action="../scripts/login_script.php" method="post">
                    <div class="input-fields">
                        <input type="email" placeholder="Zadaj svoj email" id="email" name="email" require>
                        <span class="material-symbols-outlined" class="icon">mail</span>  
                    </div>
                    <div class="input-fields">
                        <input type="password" class="password" placeholder="Zadaj svoje heslo" id="password" name="password" required>
                        <span class="material-symbols-outlined" class="icon">lock</span>
                    </div>
                    <p class="message"><?php echo $message ?></p>
                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="check">
                            <label for="check" class="text">Zapamätať si</label>
                        </div>

                        <a href="register.php" class="text1">Zabudnuté heslo?</a>
                    </div>

                    <div class="input-fields">
                        <input type="submit" value="Prihlásiť">
                    </div>
                </form>
                <div class="not-a-member">
                    <span class="text">Nemáte účet?
                        <a href="register.php" class="signup-text">Zaregistrujte sa</a>
                    </span>
                </div>
            </div>
        </div>
   </div>
   </div>
   <script src="../scripts/login_register.js"></script>

</body>
</html>