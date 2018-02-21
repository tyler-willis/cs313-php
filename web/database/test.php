<html>
    <head>
        <title>Week 11 : Problem 1</title>
    </head>
    <body>
        
        <?php
            
        $dbUser = 'tyler';
        $dbPassword = 'tyler';
        $dbName = 'game_store';
        $dbHost = 'localhost';
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
        ?>
        
    </body>
</html>
