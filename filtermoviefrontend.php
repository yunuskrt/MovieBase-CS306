<!DOCtype html>
<html>

<head>
    <title>
        Filter Movie
    </title>
</head>

<body>
    <br>
    <br>
    <div align="center ">
        <b>Welcome to Netflix Database</b>
        <br>
        <br>
        <br>
        <br>

        <form action="filtbyrating.php" method="POST">
            <input type="text" name="minRate" placeholder="Minimum Rate"><br>
            <input type="text" name="maxRate" placeholder="Maximum Rate"><br>

            <br>
            <button>FILTER BY RATING</button>
        </form>


        <form action="filtbyyear.php" method="POST">
            <input type="text" name="startYear" placeholder="Start Year"><br>
            <input type="text" name="endYear" placeholder="End Year"><br>


            <br>
            <button>FILTER BY YEAR</button>
        </form>
        <br>
        <br>
        <br>
        <a href="index.php" class="btn btn-outline-dark"> Go To Admin Page </a>
        <a href="movie.php" class="btn btn-outline-warning"> Go To Movie Page </a>
    </div>
</body>

</html>