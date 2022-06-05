<?php

include "config.php";

if (isset($_POST['title'])){
$title = $_POST['title'];
$date = intval($_POST['date']);

$sql_statement = "INSERT INTO Movie(Title,ReleaseDate)
                    VALUES ('$title','$date')";

$result = mysqli_query($db,$sql_statement);

header ("Location: index.php");

}

else
{
    echo "The form is not set.";
}

?>