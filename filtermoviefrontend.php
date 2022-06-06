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
       

        <br>
        <br>
        <br>
        <form action="filtbyactor.php" method="POST">
            <input type="text" name="leadingActor" placeholder="Actor Name"><br>
        
        
            <br>
            <button>FILTER BY LEADING ACTOR</button>
        </form>
        <br>
        <br>
        <br>
        <form action="" method="post">
            <select name="Leading Actor">
                 <option value="">Select Leading Actor</option>
                 <option value="55001">Matthew McConaughey</option>
                 <option value="55002">Lindsay Lohan</option>
                 <option value="55003">Ryan Gosling</option>
                 <option value="55004">Christian Bale</option>
                 <option value="55005">Justin Timberlake</option>
                 <option value="55041">Zendaya</option>
                 <option value="55038">Miles Teller</option>
                 <option value="55043">Jennifer Lawrance</option>
                 <option value="55034">Tom Hanks</option>
            </select>
        </form>

        <br>
        <br>
        <br>
    
        

        <form action="" method="post">
            <select name="Director">
                 <option value="">Select Director</option>
                 <option value="82329">Damien Chazelle</option>
                 <option value="83565">Denis Villeneuve</option>
                 <option value="83456">Gary Ross</option>
                 <option value="82001">Christopher Nolan</option>
                 <option value="82003">Mark Waters</option>
                 <option value="84007">Frank Darabont</option>
                 <option value="85001">Andrew Niccol</option>
               
            </select>
        </form>
        <br>
        <br>
        <br>
        

        <form action="filtbygenre.php" method="POST">
            <input type="text" name="genre" placeholder="Genre"><br>
            
            <br>
            <button>FILTER BY GENRE</button>
        </form>

        <br>
        <br>
        <br>
        
        <form action="filtbyyear.php" method="POST">
            <input type="text" name="startYear" placeholder="Start Year"><br>
            <input type="text" name="endYear" placeholder="End Year"><br>
            

            <br>
            <button>FILTER BY YEAR</button>
        </form>
        </div>
    </body>
</html>