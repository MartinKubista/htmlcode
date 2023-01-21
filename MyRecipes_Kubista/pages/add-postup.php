<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css"> 
    <title>Pridať postup</title>
</head>
<body>
    <?php 
        require_once('../scripts/postup.php');

        if (isset($_GET['edit'])) {
            $id = $_GET['edit'];
        }
    ?>

    <div class="content">
        <div class="index-return">
            <a href="index.php">
                <button>Návrat k receptom</button>
            </a>
        </div>
        <form action="" method="post" class="postup-prace" enctype="multipart/form-data">
            <fieldset>Postup práce</fieldset>    
            <label>Obrázok</label>
            <input type="file" name="postup-images" value=""> 
            <textarea name="description" id="" cols="30" rows="10" placeholder="Popíš postup"></textarea>
            
            <input type="hidden" name="recipe_id" value="<?php echo $id; ?>">                                                  
            
            <button class="submit" name="add-postup">Pridať</button>
        </form>
        
    </div>

    <?php $results = mysqli_query($conn, "SELECT * FROM images WHERE recept_id=$id"); ?>

    <ol class="pridavanie-postupu">
        <?php while ($row = mysqli_fetch_assoc($results)) { ?>              
            <li>  
                <a href="../scripts/delete-postup.php?edit=<?php echo $id; ?>&zmaz=<?php echo $row["id"]; ?>">
                    <button class="btn-danger">Zmazať</button>
                </a> 
                  
                <br>
                <?= $row["postup"] ?>
                <br>
                <img src="../recipes-images/postup-images/<?= $row["array_image"] ?>" alt="">                       
            </li>
        <?php } ?>
    </ol>
    
</body>
</html>