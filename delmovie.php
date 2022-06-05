<?php 

include "config.php";

if (isset($_POST['ids'])){

$selection_id = $_POST['ids'];

$sql_statement = "DELETE FROM Movie WHERE MovieID = $selection_id";

$result = mysqli_query($db, $sql_statement);

header ("Location: deletemovie.php");

}

else
{
	echo "The form is not set.";
}

?>