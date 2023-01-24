<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/main.css"> 
    <title>Profil</title>
</head>
<body>

    <?php
        require_once('../scripts/connection.php');
        require_once('../scripts/users.php');
        include('../parts/hlava.php');
        require_once('../scripts/add-avatar.php');   
        require_once('../scripts/change-password.php');   

        if (isset($_GET['user'])) {
            $user = $_GET['user'];
        }
    ?>

    <div class="content">
        <?php $result = mysqli_query($conn, "SELECT * FROM users WHERE name = '$user'"); ?>
        
        <?php while ($row = mysqli_fetch_assoc($result)) { ?>
            <?php if ($result): ?>
                <?php if ($row['avatar']): ?>
                    <img src="../profile-photos/<?= $row['avatar'] ?>" alt="" class="avatar">
                <?php endif; ?>
                <div class="forms">

                    <form action="" method="post" class="profile" enctype="multipart/form-data">
                        <fieldset>Profilová fotka</fieldset>    
                        <label>Obrázok</label>
                        <input type="file" name="profile-photos" value=""> 
                        
                        <input type="hidden" name="user" value="<?php echo $_SESSION["account"]["name"]; ?>">                                                  
                        
                        <button class="submit" name="add-avatar">Zmeniť profilovú fotku</button>
                    </form>                                  

                    <form action="" method="post" class="profile">
                        <?php if($error["password"]): ?>
                            <section class="error">Nezadal si správne pôvodné heslo</section>
                        <?php endif;?>
                        <?php if($error["old"]): ?>
                            <section class="error">Nové heslo musí byť iné ako staré</section>
                        <?php endif;?>
                        <fieldset>Zmena hesla</fieldset> 
                        <input type="text" name="old" value="" placeholder="Zadaj staré heslo">    
                        <input type="text" name="new" value="" placeholder="Zadaj nové heslo">                     
                        <input type="hidden" name="user" value="<?php echo $_SESSION["account"]["name"]; ?>">                                                  
                        
                        <button class="submit" name="change-password">Zmeniť heslo</button>
                    </form>
                </div> 
                
            <?php endif; ?>
        <?php } ?> 

        <?php $results = mysqli_query($conn, "SELECT * FROM recepty WHERE username = '$user' ORDER BY date_of_create DESC"); ?>
        <h1 class="title">Moje recepty</h1>
        <div class="grid-container">                              
            <?php while ($row = mysqli_fetch_assoc($results)) { ?>
                <div class="grid-item">
                    <?php if ($row['image_data']): ?>
                        <img class="img-thumbnail main-img" src="../recipes-images/<?= $row['image_data'] ?> ">
                    <?php endif; ?>
                    <h2 class="m-3"> 
                        <a <?php echo $row["nazov_receptu"] ?> href="../pages/recipe.php?recipe=<?php echo $row['recept_id']; ?>"><?= $row["nazov_receptu"] ?></a> 
                    </h2>                   
                    
                    <div class="article-content"> 
                        <?php
                            $string = strip_tags($row["popis_receptu"]);
                            if (strlen($string) > 200) {
                            
                                // skráť reťazec
                                $stringCut = substr($string, 0, 200);
                                $endPoint = strrpos($stringCut, ' ');
                            
                                $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                                $string .= '...';
                            }
                            echo $string;
                        ?>
                    </div>
                    <?php $string = strip_tags($row["popis_receptu"]); 
                            if (strlen($string) > 200): ?>
                        <div class="read-more"><a href="../pages/recipe.php?recipe=<?php echo $row['recept_id']; ?>">Čítať viac</a></div>
                    <?php endif; ?>
                    <div class="time">
                        <i class="far fa-calendar-alt"></i>
                        <?php
                            $time = "SELECT date_of_create FROM recepty";
                            $cr_date=date_create($row['date_of_create']);
                            //$for_date=date_format($cr_date,'d.m.Y H:i');  
                            $for_date=date_format($cr_date,'d.m.Y');                               
                            echo $for_date; 
                        ?>                                     
                    </div>
                </div>                                                 
            <?php } ?>                
        </div>
    </div>
</body>
</html>