<?php
require_once('../scripts/connection.php');
$isEmpty = false;
$email = mysqli_real_escape_string($conn, $_POST['email']);
$password = mysqli_real_escape_string($conn, $_POST['password']);
$hash = md5($_POST["password"]);

if (empty($email)) {
    $isEmpty = true;
}
if (empty($password)) {
    $isEmpty = true;
}

if ($isEmpty == true) {
    header('Location: ../pages/login.php?message=Nieco si nezadal');
}

if ($isEmpty == false) {
    $query = "SELECT * FROM users WHERE email='$email' AND password='$hash'";
    
    $results = mysqli_query($conn, $query);

    if (mysqli_num_rows($results) == 1) {
        session_start();
        $_SESSION["email"] = $email;   
        header('Location: ../pages/index.php');
    } 
    else {
        header('Location: ../pages/login.php?message=Zadal si zle meno alebo heslo');
    }
}
