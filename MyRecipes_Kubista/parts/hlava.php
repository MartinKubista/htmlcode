<!DOCTYPE html>
<html lnag="en">
<head>
    <link href="../css/header.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css">  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<?php 
session_start();
?>
<header>
    <div class="main-div">
        <div class="logo-div">
            <a href="../pages/index.php"  ><img class="logo"src="../images/MyRecipes-logo1.PNG" alt="MyRecipes"></a>
        </div>

        <?php if (!isset($_SESSION["email"])) : ?>
        <div class="main-div-pad">
            <a href="../pages/login.php" class="main-a">
                <span class="material-symbols-outlined md-48">person</span>
                <span class="sign_in">Prihlásiť sa</span>
            </a>
        </div>
        <?php else : ?>
            <div class="right-hlava">
                <div class="main-div-new-recipe">
                    <a href="../pages/add-recipe.php" class="main-a">
                        <span class="material-symbols-outlined">add</span>
                        <span  class="button-add-recipe">Pridaj recept</span>
                    </a>
                </div>
            
                <div class="main-div-pad">
                        <?php include('../scripts/session.php');?>
                        <a href="../pages/profile.php" class="main-a">
                            <span class="material-symbols-outlined md-48">person</span>
                            <span class="sign_in"<?php  echo "?user=".$id;?>><?php echo $name; ?>
                        </a>
                </div>
            </div>
        <?php endif; ?>
    </div>
</header>
