<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyRecipes</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css"> 
    <link rel="stylesheet" href="../css/main.css"> 
    <style>
        *{
            margin: 0;
            padding: 0;
            /*background-color: white;*/
        }
    </style>
</head>
<body>
    <?php
        require_once('../scripts/connection.php');
        require_once('../scripts/users.php');
        include('../parts/hlava.php');
    ?>

    <?php
        include('../parts/search-bar.php');
    ?>

    <nav class="topnav" id="myTopnav">
        <a href="index.php?options=polievky">Polievky</a>
        <a href="index.php?options=cestoviny">Cestoviny</a>
        <a href="index.php?options=Jedlá z húb">Jedlá z húb</a>
        <a href="index.php?options=Mäsité jedlá">Mäsité jedlá</a>
        <a href="index.php?options=Bezmäsité jedlá">Bezmäsité jedlá</a>
        <a href="index.php?options=Jedlá z rýb">Jedlá z rýb</a>
        <a href="index.php?options=Koláče a dezerty">Koláče a dezerty</a>
        <a href="index.php?options=Torty">Torty</a>
        <a href="index.php?options=Ovocné jedlá">Ovocné jedlá</a>
        <a href="index.php?options=Zeleninové jedlá">Zeleninové jedlá</a>
        <a href="index.php?options=Nátierky">Nátierky</a>
        <a href="index.php?options=Nápoje">Nápoje</a>
        <a href="index.php">Všetky</a>
    </nav>


    <?php     
        if (isset($_GET['search'])) {
            $keyword = $_GET['keyword']; 
            if(isset($_SESSION["account"]) && $_SESSION["account"]["user_type"] == 'admin'){
                $results = mysqli_query($conn, "SELECT * FROM recepty WHERE CONCAT(nazov_receptu, popis_receptu, options, suroviny) LIKE '%$keyword%'");
            }
            else{
                $results = mysqli_query($conn, "SELECT * FROM recepty WHERE CONCAT(nazov_receptu, popis_receptu, options, suroviny) LIKE '%$keyword%' AND new_old = 'old'");
            }        
            
        }

        else if(isset($_GET['options'])){
            $o = $_GET['options'];
            if(isset($_SESSION["account"]) && $_SESSION["account"]["user_type"] == 'admin'){
                $results = mysqli_query($conn, "SELECT * FROM recepty WHERE options = '$o' ORDER BY date_of_create DESC");
            }
            else{
                $results = mysqli_query($conn, "SELECT * FROM recepty WHERE options = '$o' AND new_old = 'old' ORDER BY date_of_create DESC");

            }
        }
        else{
            if(isset($_SESSION["account"]) && $_SESSION["account"]["user_type"] == 'admin'){
                $results = mysqli_query($conn, "SELECT * FROM recepty ORDER BY date_of_create DESC");
            }
            else{
                $results = mysqli_query($conn, "SELECT * FROM recepty WHERE new_old = 'old' ORDER BY date_of_create DESC");
            }
            
        }
    ?>
    <h1 class="title">Recepty</h1>
    <div class="grid-container">                              
        <?php while ($row = mysqli_fetch_assoc($results)) { ?>
            <div class="grid-item">
                <?php if ($row['new_old'] == 'new' && isset($_SESSION["account"]) && $_SESSION["account"]["user_type"] == 'admin'): ?>
                    <button class="btn-warning m-2"><a <?php echo $row["nazov_receptu"] ?> href="../pages/recipe.php?recipe=<?php echo $row['recept_id']; ?>"><p class="m-2">NOVÝ RECEPT!</p></a></button>             
                <?php endif; ?>
                <?php if ($row['image_data']): ?>
                    <img class="img-thumbnail main-img" src="../recipes-images/<?= $row['image_data'] ?> ">
                <?php endif; ?>
                <h2 class="m-2"> 
                    <a <?php echo $row["nazov_receptu"] ?> href="../pages/recipe.php?recipe=<?php echo $row['recept_id']; ?>"><?= $row["nazov_receptu"] ?></a> 
                </h2> 
                <p class="created">Vytvoril: <?php echo $row["username"] ?></p>                  
              
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
    
</body>
</html>

