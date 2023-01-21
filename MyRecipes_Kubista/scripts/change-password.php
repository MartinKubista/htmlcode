<?php

require_once('../scripts/connection.php');

$msg = "";

$error = [
    "password" => false,
    "old" => false,
];

 
if (isset($_POST['change-password'])) {
    $user = $_GET['user'];
    $old = $_POST['old'];
    $new = $_POST['new'];

    $result = mysqli_query($conn, "SELECT * FROM users WHERE name = '$user'");
    $row = mysqli_fetch_assoc($result);

    if($old == $new){
        $error["old"] = true;
    }

    else if($row['password'] == $old){
        $query = "UPDATE users SET password = '$new' WHERE name = '$user'";
        mysqli_query($conn, $query);
        header("location: ../pages/index.php");
    }   

    else{
        $error["password"] = true;
    }
}

?>