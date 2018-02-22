<html>
    <head>
        <title>Week 11 : Problem 1</title>
    </head>
    <body>
        
        <?php
            
        $dbUser = 'ucegihpgymiqsr';
        $dbPassword = '07ed1204e14e2d3103cf2a8260367506829fdba53cf382643e899cebebddaea6';
        $dbName = 'd2k53fohtc270j';
        $dbHost = 'ec2-54-83-203-198.compute-1.amazonaws.com';
        $dbPort = '5432';
        
        try
        {
            // Create the PDO connection
            $db = new PDO("pgsql:host=$dbHost;dbname=$dbName", $dbUser, $dbPassword);
            // this line makes PDO give us an exception when there are problems, and can be very helpful in debugging!
            $db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
        }
        catch (PDOException $ex)
        {
            // If this were in production, you would not want to echo
            // the details of the exception.
            echo "Error connecting to DB. Details: $ex";
            die();
        }
        
        $statement = $db->prepare('SELECT * FROM game JOIN game_info ON game,game_info = game_info.id');
        $statement->execute();
        
        while ($row = $statement->fetch(PDO::FETCH_ASSOC))
        {
            echo '<p>';
            
            echo "Number of Copies: " $row['num_copies'] . "<br>" . $row['title'] . "<br>" . $row['description'];
            
            echo "<br><br>";
            
            echo '</p>';
        }
        
        ?>
        
    </body>
</html>
