<?php
require_once('../scripts/connection.php');
require_once('../scripts/add_image.js');
require_once('../scripts/add_part_of_food.js');
require_once('../scripts/postup_receptu.js');



$array_suroviny = $_POST['array_suroviny'];
$array_mnozstvo = $_POST['array_mnozstvo'];
$array_jednotka = $_POST['array_jednotka'];
$array_postup = $_POST['array_postup'];
$options = $_POST['options'];




//$user_id = $_SESSION['user_id'];


$sql = "INSERT INTO recepty (nazov_receptu, popis_receptu, array_suroviny, 
array_mnozstvo, array_jednotka, array_postup, options, 
priprava_v_minutach, varenie_pecenie, teplota, pocet_porci) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$array_suroviny = serialize($array_suroviny);
$array_mnozstvo = serialize($array_mnozstvo);
$array_jednotka = serialize($array_jednotka);
$array_postup = serialize($array_postup);
$options = serialize($options);
$nazov_receptu = $_POST['nazov_receptu'];
$popis_receptu = $_POST['popis_receptu'];
$priprava_v_minutach = $_POST['priprava_v_minutach'];
$varenie_pecenie = $_POST['varenie_pecenie'];
$teplota = $_POST['teplota'];
$pocet_porci = $_POST['pocet_porci'];
$stmt->bind_param("sssssssssss", $nazov_receptu, $popis_receptu, $array_suroviny, $array_mnozstvo,
 $array_jednotka, $array_postup, $options, 
$priprava_v_minutach, $varenie_pecenie, $teplota, $pocet_porci);
$stmt->execute();
$stmt->close();
$conn->close();

error_reporting(E_ALL);
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