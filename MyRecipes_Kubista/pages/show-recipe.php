
<?php

require_once('../scripts/connection.php');
$recept_id = 20;
$sql = "SELECT * FROM recepty WHERE recept_id = $recept_id";
$result = mysqli_query($conn, $sql);
$recipe = mysqli_fetch_assoc($result);

$name = $recipe['nazov_receptu'];
$description = $recipe['popis_receptu'];
$ingredients = unserialize($recipe['array_suroviny']);
$quantities = unserialize($recipe['array_mnozstvo']);
$units = unserialize($recipe['array_jednotka']);
$images = unserialize($recipe['array_obrazky']);
$steps = unserialize($recipe['array_postup']);
$options = unserialize($recipe['options']);
$prep_time = $recipe['priprava_v_minutach'];
$cooking_time = $recipe['varenie_pecenie'];
$temperature = $recipe['teplota'];
$servings = $recipe['pocet_porci'];
$image_data = $recipe['image_data'];


echo "<h1>$name</h1>";
echo "<p>$description</p>";
echo "<h2>Ingredients</h2>";
echo "<ul>";
for ($i = 0; $i < count($ingredients); $i++) {
  echo "<li>$quantities[$i] $units[$i] of $ingredients[$i]</li>";
}
echo "</ul>";
echo "<h2>Steps</h2>";
echo "<ol>";
for ($i = 0; $i < count($steps); $i++) {
  echo "<li>$steps[$i]</li>";
}
echo "</ol>";
echo "<p>Preparation time: $prep_time minutes</p>";
echo "<p>Cooking time: $cooking_time minutes</p>";
echo "<p>Temperature: $temperature degrees Celsius</p>";
echo "<p>Servings: $servings</p>";
echo "<img src='$image_data'>";
?>
<style>
    .recipe {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.recipe img {
  width: 50%;
  margin-bottom: 20px;
}

.recipe .info {
  display: flex;
  justify-content: space-between;
  width: 80%;
  margin-bottom: 20px;
}

.recipe .info .left {
  display: flex;
  flex-direction: column;
}

.recipe .info .right {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
}

.recipe .info p {
  margin: 0;
}

.recipe .ingredients {
  display: flex;
  flex-direction: column;
  width: 80%;
  margin-bottom: 20px;
}

.recipe .ingredients h2 {
  margin-bottom: 10px;
}

.recipe .ingredients ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.recipe .steps {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  width: 80%;
}

.recipe .steps h2 {
  margin-bottom: 10px;
}

.recipe .steps ol {
  list-style: none;
  margin: 0;
  padding: 0;
}

.recipe .steps li {
  display: flex;
  align-items: center;
}

.recipe .steps img {
  width: 50px;
  height: 50px;
  margin-right: 10px;
}
</style>
