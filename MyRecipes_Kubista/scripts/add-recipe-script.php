<?php
require_once('../scripts/connection.php');
require_once('../scripts/add_image.js');
require_once('../scripts/add_part_of_food.js');
require_once('../scripts/postup_receptu.js');

$nazov_receptu = mysqli_real_escape_string($conn, $_POST['nazov-receptu']);
$popis_receptu = mysqli_real_escape_string($conn, $_POST['popis-receptu']);

$array_suroviny = $_POST['array_suroviny'];
$array_mnozstvo = $_POST['array_mnozstvo'];
$array_jednotka = $_POST['array_jednotka'];


//$user_id = $_SESSION['user_id'];


$sql = "INSERT INTO recepty (array_suroviny, array_mnozstvo, array_jednotka) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$array_suroviny = serialize($array_suroviny);
$array_mnozstvo = serialize($array_mnozstvo);
$array_jednotka = serialize($array_jednotka);
$stmt->bind_param("sss", $array_suroviny, $array_mnozstvo, $array_jednotka);
$stmt->execute();
$stmt->close();
$conn->close();
/*
    $sql = "INSERT INTO users (username, surname, password, email, avatar) 
    VALUES('$username', '$surname', '$hash', '$email', '$avatar')";
    if ($conn->query($sql) == true){       
        header('Location: ../pages/login.php?message=Registracia bola uspesna');
    }
    else{
        echo "Error" . $sql . "<br>" . $conn->error;
    }
    $conn->close();
*/
?>