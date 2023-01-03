<?php
require_once('../scripts/connection.php');
$isEmpty = false;
$hasPasswordCertainLength = true;
$hasPasswordAtLeastOneNumber = true;
$passwordAreSame = true;
$usernameOrEmailAlreadyExists = false;


$username = mysqli_real_escape_string($conn, $_POST['name']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$password = mysqli_real_escape_string($conn, $_POST['password']);

if(empty($_POST["email"])){
    $isEmpty = true;
}
if(empty($_POST["name"])){
    $isEmpty = true;
}
if(empty($_POST["password"])){
    $isEmpty = true;
}
if(empty($_POST["password-r"])){
    $isEmpty = true;
}
if($isEmpty == true){
    echo "Nieco si nezadal" . "<br>";
}

if (!preg_match("/[0-9]/", $password)) {
    $hasPasswordAtLeastOneNumber = false;
    header('Location: ../pages/register.php?message=Heslo musi obsahovat aspon jeden ciselny znak');
}

if($_POST["password"] == $_POST["password-r"]){
    $passwordAreSame = true;
}
else{
    $passwordAreSame = false;
    header('Location: ../pages/register.php?message=Hesla sa nezhoduju');
}

if(strlen($password) < 6){
    $hasPasswordCertainLength = false;
    header('Location: ../pages/register.php?message=Heslo musi obsahovat minimalne 6 znakov');
}
else{
    $hasPasswordCertainLength = true;
}


$sql_e = "SELECT * FROM users WHERE email='$email'";
$res_e = mysqli_query($conn, $sql_e);



if(mysqli_num_rows($res_e) > 0){
    $usernameOrEmailAlreadyExists = true;
    header('Location: ../pages/register.php?message=Email uz bol pouzity');
}

if($isEmpty == false && $hasPasswordCertainLength && $hasPasswordAtLeastOneNumber == true && $passwordAreSame == true && $usernameOrEmailAlreadyExists == false){
    $hash = md5($_POST["password"]);
    $sql = "INSERT INTO users (name, email, password) 
    VALUES('$username', '$email', '$hash')";
    if ($conn->query($sql) == true){       
        header('Location: ../pages/login.php?message=Registracia bola uspesna');
    }
    else{
        echo "Error" . $sql . "<br>" . $conn->error;
    }
    $conn->close();
}
?>