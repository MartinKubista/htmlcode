<?php
session_start();
require_once('../scripts/connection.php');
require_once('../scripts/add_image.js');
require_once('../scripts/add_part_of_food.js');
require_once('../scripts/postup_receptu.js');



$array_suroviny = $_POST['array_suroviny'];
$array_mnozstvo = $_POST['array_mnozstvo'];
$array_jednotka = $_POST['array_jednotka'];
$array_postup = $_POST['array_postup'];
$options = $_POST['options'];
$images = json_decode($_POST['images'], true);
$nazov_receptu = $_POST['nazov_receptu'];
$popis_receptu = $_POST['popis_receptu'];
$priprava_v_minutach = $_POST['priprava_v_minutach'];
$varenie_pecenie = $_POST['varenie_pecenie'];
$teplota = $_POST['teplota'];
$pocet_porci = $_POST['pocet_porci'];



//$user_id = $_SESSION['user_id'];

if(isset($_SESSION["email"])) {
    $email = $_SESSION["email"];
    $query = "SELECT name,id FROM users WHERE email='$email'";
    $result = $conn->query($query);

    while ($row = $result->fetch_assoc()) {
        $id=$row["id"];
        $name=$row["name"];
    }

    $user_id = $id;
    $user_name = $name;

}

function createUrlSlug($urlString){
    $slug = preg_replace('/[^A-Za-z0-9-]+/', '-', $urlString);
    return $slug;
}

$url_ar = createUrlSlug($nazov_receptu);
$url_ar = $url_ar.'-'.time();

$sql = "INSERT INTO recepty (nazov_receptu, popis_receptu, array_suroviny, 
array_mnozstvo, array_jednotka, array_postup, options, 
priprava_v_minutach, varenie_pecenie, teplota, pocet_porci, image_data, url_ar, id_author, username) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$array_suroviny = serialize($array_suroviny);
$array_mnozstvo = serialize($array_mnozstvo);
$array_jednotka = serialize($array_jednotka);
$array_postup = serialize($array_postup);
$options = serialize($options);
$stmt->bind_param("sssssssssssssss", $nazov_receptu, $popis_receptu, $array_suroviny, $array_mnozstvo,
 $array_jednotka, $array_postup, $options, 
$priprava_v_minutach, $varenie_pecenie, $teplota, $pocet_porci, $images, $url_ar, $user_id, $user_name);
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