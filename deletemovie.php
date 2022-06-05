<!DOCtype html>
<html>
    <head>
        <title>
            Delete Movie
        </title>
    </head>
    <body>
<?php

include "config.php";

include "movies.php";
?>

<div align="center">
<form action="delmovie.php" method="POST">
<select name="ids">

<?php

$sql_command = "SELECT MovieID FROM Movie";

$myresult = mysqli_query($db, $sql_command);

while($id_rows = mysqli_fetch_assoc($myresult))
{
	$id = $id_rows['MovieID'];
	echo "<option value=$id>".$id."</option>";
}

?>
</select>


<button>DELETE</button>
</div>

</form>
</body>
</html>