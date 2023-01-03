<?php 
$email = $_SESSION["email"];
$query = "SELECT name,id FROM users WHERE email='$email'";
$result = $conn->query($query);

while ($row = $result->fetch_assoc()) {
    $id=$row["id"];
    $name=$row["name"];
}
?>