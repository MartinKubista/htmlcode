<?php

require_once "../scripts/connection.php";
require_once('../scripts/users.php');

$msg = "";
$isEmpty = false;

if (isset($_POST['vytvor_recept'])) {

  $title = $_POST['nazov-receptu'];
  $content = $_POST['popis-receptu'];
  $suroviny = $_POST['suroviny'];
  $options = $_POST['options'];
  $priprava = $_POST['priprava-v-minutach'];
  $varenie = $_POST['varenie-pecenie'];
  $teplota = $_POST['teplota'];
  $porcie = $_POST['pocet-porci'];

  $user = $_SESSION["account"]["name"];

  $img = $_FILES["recipes-images"]["name"];
  $tempname = $_FILES["recipes-images"]["tmp_name"];    
  $folder = "../recipes-images/".$img;

  if(empty($_POST["nazov-receptu"])){
    $isEmpty = true;
  }
  if(empty($_POST["popis-receptu"])){
      $isEmpty = true;
  }
  if(empty($_POST["suroviny"])){
    $isEmpty = true;
  }
  if(empty($_POST["options"])){
      $isEmpty = true;
  }
  if($isEmpty == true){
    header('Location: ../pages/add-recipe.php?message=Niečo si nezadal');
}
  if($isEmpty == false){
  $query = "INSERT INTO recepty (nazov_receptu, popis_receptu, suroviny, options, priprava_v_minutach,varenie_pecenie,teplota,pocet_porci,image_data, username, date_of_create, new_old) VALUES('$title', '$content', '$suroviny', '$options', '$priprava','$varenie','$teplota','$porcie', '$img', '$user',CURRENT_TIMESTAMP, 'new')";
  mysqli_query($conn, $query);
  
  if (move_uploaded_file($tempname, $folder))  {
    $msg = "Obrázok sa podarilo nahrať";
  }
  else{
    $msg = "Nepodarilo sa nahrať obrázok";
  }

  $results = mysqli_query($conn, "SELECT recept_id FROM recepty WHERE nazov_receptu='$title'");
  $row = mysqli_fetch_array($results);
  $id = $row['recept_id'];
  header("location: ../pages/add-postup.php?edit=".$id);
  }

}

?>