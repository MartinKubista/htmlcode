<?php

require_once('../scripts/connection.php');

$msg = "";
 
if (isset($_POST['add-postup'])) {
  $description = $_POST['description'];
  $recipe = $_POST['recipe_id'];
 
  $id = $_GET['edit'];

  $img = $_FILES["postup-images"]["name"];
  $tempname = $_FILES["postup-images"]["tmp_name"];    
  
  $folder = "../recipes-images/postup-images/".$img;

  $query = "INSERT INTO images (recept_id, array_image, postup) VALUES('$recipe', '$img', '$description')";
  mysqli_query($conn, $query);
  header("location: add-postup.php?edit=".$id);

  if (move_uploaded_file($tempname, $folder))  {
    $msg = "Obrázok sa podarilo nahrať";
  }
  else{
    $msg = "Nepodarilo sa nahrať obrázok";
  }
}

?>