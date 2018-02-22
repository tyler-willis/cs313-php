<html>
    <body>
        Name: <?php echo $_GET["name"]; ?><br>
        Console: <?php echo $_GET["console"]; ?>
        
        <?php
        $title = $_GET["title"];
        $console =$_GET["console"];
        $company =$_GET["company"];
        $description =$_GET["description"];
        $release_date =$_GET["release_date"];
        $genre =$_GET["genre"];
        $esrb =$_GET["esrb"];
        
        echo $title . $console . $company . $description . $release_date . $genre . $esrb;
        ?>
    </body>
</html>