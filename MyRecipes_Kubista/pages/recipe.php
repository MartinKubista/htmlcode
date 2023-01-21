<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css"> 
    <title>Recept</title>
</head>
<body>
    <?php
        require_once('../scripts/connection.php');
        require_once('../scripts/users.php');
        include('../parts/hlava.php');
        require_once ('../scripts/add-review.php');
    ?>

    <?php 
        if (isset($_GET['recipe'])) {
            $id = $_GET['recipe'];
            $record = mysqli_query($conn, "SELECT * FROM recepty WHERE recept_id=$id");

            $n = mysqli_fetch_array($record);
            $nazov = $n['nazov_receptu'];
            $content = $n['popis_receptu'];
            $suroviny = $n['suroviny'];
            $options = $n['options'];
            $priprava = $n['priprava_v_minutach'];
            $varenie = $n['varenie_pecenie'];
            $teplota = $n['teplota'];
            $porcie = $n['pocet_porci'];
            $img = $n['image_data'];
            $user = $n['username'];
            $datetime = $n['date_of_create'];
            $new_old = $n['new_old'];

            $record2 = mysqli_query($conn, "SELECT * FROM images WHERE recept_id=$id");
            //$n2 = mysqli_fetch_array($record2);
            /*if($n2){
                $img2 = $n2['array_image'];
                $description = $n2['postup'];
            }*/

            $record3 = mysqli_query($conn, "SELECT * FROM reviews WHERE recept_id = $id");
            //$n3 = mysqli_fetch_array($record3);
            /*if($n3){
                $username_review = $n3['username'];
                $review = $n3['review'];
                $date_review = $n3['datetime'];  
            }  */    
            $record4 = mysqli_query($conn, "SELECT * FROM users WHERE name = '$user'");            
        }
    ?>

    <div class="content">
        <div class="recipe-content">
            
            <?php if ($new_old == 'new' && isset($_SESSION["account"]) && $_SESSION["account"]["user_type"] == 'admin'): ?>
                <p class="m-2">Nový recept!</p> 
                <a href="../scripts/confirm-delete.php?confirm=<?php echo $id; ?>">
                    <button class="btn-success new-recept" name="confirm">Schváliť</button>
                </a> 
                <a href="../scripts/confirm-delete.php?delete=<?php echo $id; ?>">
                    <button class="btn-danger new-recept" name="delete">Neschváliť</button>  
                </a>                         
            <?php endif; ?>

            <h1><?= $nazov ?></h1>
            <!--<?php  /*if (isset($_SESSION["account"]) && $_SESSION["account"]["name"] == $user): ?>
                <button class="btn btn-success edit-info" style="border-radius: 15px;">
                    <a href="add-postup.php?edit=<?php echo $id; ?>">Pridať postup práce <i class="fa fa-edit"></i></a> 
                </button>
            <?php endif;*/ ?>-->
            <div class="/*mt-4*/" style="margin-left: 1.5%;">
                <i class="far fa-calendar-alt"></i> Pridané: 
                <?php
                    $time = "SELECT date_of_create FROM recepty";
                    $cr_date=date_create($datetime);
                    $for_date=date_format($cr_date,'d.m.Y');                                
                    echo $for_date; 
                ?>                                    
            </div>  
            <?php if($img): ?>
                <img src="../recipes-images/<?= $img ?>" class="main-img">
            <?php endif; ?>                                  
            
            <div class="popis">
                <p><?= $content ?></p>
            </div>

            <?php if($priprava || $varenie || $teplota || $porcie): ?>
            <div class="grid">
                <?php if($priprava): ?><i class="color-silver fas fa-clock" aria-hidden="true"> <span>Príprava: <?= $priprava ?> min</span></i><?php endif; ?>  
                <?php if($varenie): ?><i class="color-silver fas fa-fire-alt" aria-hidden="true"> <span>Tepelná príprava: <?= $varenie ?> min</span></i><?php endif; ?>    
                <?php if($teplota): ?><i class="fas fa-temperature-high"> <span>Teplota: <?= $teplota ?>°C</span></i><?php endif; ?>  
                <?php if($porcie): ?><i class="fa fa-smile"> <span>Počet porcií: <?= $porcie ?></span></i><?php endif; ?>
            </div>
            <?php endif; ?>
            
            <ol>
                <?php while ($row = mysqli_fetch_assoc($record2)) { ?>              
                    <li>            
                        <br>
                        <?= $row["postup"] ?>
                        <br>
                        <img src="../recipes-images/postup-images/<?= $row["array_image"] ?>" alt="" class="main-img">                       
                    </li>
                <?php } ?>
            </ol>

            <p class="suroviny">Suroviny: <?= $suroviny ?></p>

            <?php while ($row3 = mysqli_fetch_assoc($record4)) { ?>
            <p> Autor: 
                <a href="../parts/author.php?user=<?= $user ?>">
                    <img src="../profile-photos/<?= $row3["avatar"] ?>" alt="" class="photo">
                    <?= $user ?>
                </a> 
            </p>
            <?php } ?>
            <br>
            <div>
                <h1>Recenzie</h1>

                <?php while ($row2 = mysqli_fetch_assoc($record3)) { ?>
                    <?php 
                    $review_author = $row2["username"];
                    $record5 = mysqli_query($conn, "SELECT * FROM users WHERE name = '$review_author'");
                        while ($row4 = mysqli_fetch_assoc($record5)) {
                    ?>
                    <div class="review"> 
                    <a href="../parts/author.php?user=<?= $row2["username"] ?>" class="review-author">     
                        <img src="../profile-photos/<?= $row4["avatar"] ?>" alt="" class="photo">                 
                        <span class="m-1"><?= $row2["username"] ?></span>                       
                    </a>
                    <?php } ?>
                        <p><i class="far fa-calendar-alt" aria-hidden="true"></i>
                            <?php
                                $time = "SELECT datetime FROM reviews";
                                $cr_date=date_create($row2['datetime']);
                                $for_date=date_format($cr_date,'d.m.Y');                                
                                echo $for_date; 
                            ?>
                        </p>
                        <p><?= $row2["review"] ?></p>
                    </div>
                <?php } ?>

                <?php  if (isset($_SESSION["account"])): ?>
                    <form action="" class="form-review" method="post">
                        <textarea name="review" id="" rows="4" placeholder="Napíš recenziu"></textarea>
                        <input type="hidden" name="username" value="<?php echo $_SESSION["account"]["name"]; ?>">
                        <input type="hidden" name="recept_id" value="<?php echo $id; ?>">
                        <button class="submit" name="add-review">Pridať recenziu</button>
                    </form>
                <?php endif; ?>
            </div>
        </div>
    </div>
</body>
</html>