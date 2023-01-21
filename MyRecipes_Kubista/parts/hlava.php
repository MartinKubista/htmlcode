<!DOCTYPE html>
<html lnag="en">
<head>
    <link href="../css/header.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css">  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css"> 
</head>
<style>
    .btn-success, .btn-info{
        border-radius: 12px;
    }
    .btn-success a, .btn-info a{
        color: white;
    }
</style>

<?php 
//session_start();
    require_once('../scripts/users.php');

    if(isset ($_SESSION["account"])){
        $user = $_SESSION["account"]["name"];
        $record = mysqli_query($conn, "SELECT * FROM users WHERE name = '$user'");
    }
    
?>

<header>
    <div class="main-div">
        <div class="logo-div">
            <a href="../pages/index.php"  ><img class="logo"src="../images/MyRecipes-logo1.PNG" alt="MyRecipes"></a>
        </div>

        <?php if (!isset($_SESSION["account"])) : ?>
        <button class="btn-info">
            <div class="main-div-pad">
                <a href="../pages/login.php" class="main-a">
                    <span class="material-symbols-outlined md-48">person</span>
                    <span class="sign_in">Prihlásiť sa</span>
                </a>
            </div>
        </button>
        <?php else: ?>
            <div class="right-hlava">
                <button class="btn-success">
                    <div class="main-div-new-recipe">                    
                        <a href="../pages/add-recipe.php" class="main-a">
                            <span class="material-symbols-outlined">add</span>
                            <span  class="button-add-recipe">Pridaj recept</span>
                        </a>
                    </div>
                </button>

                <button class="btn-info">
                    <div class="main-div-pad">
                            <?php /*include('../scripts/session.php');*/?>
                            <a href="../parts/profile.php?user=<?php echo $_SESSION["account"]["name"]; ?>" class="main-a">
                                <?php while ($row = mysqli_fetch_assoc($record)) { 
                                    if($row["avatar"]):
                                ?>                                   
                                    <img src="../profile-photos/<?= $row["avatar"] ?>" alt="" class="photo mt-1">
                                <?php
                                    endif;
                                } ?>
                                <span class="sign_in"<?php  /*echo "?user=".$id;*/?>><?php echo $_SESSION["account"]["name"]; ?>                               
                            </a>
                    </div>
                </button>
            </div>
            
            <div class="main-div-pad">
                <button class="btn-info">
                    <a href="../scripts/logout.php" class="main-a">                           
                        <span class="sign_in">Odhlásiť sa</span>
                    </a>
                </button> 
            </div>
            
        <?php endif; ?>
    </div>
</header>
