<html>
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
        
        $title = $_GET["title"];
        $console =$_GET["console"];
        $company =$_GET["company"];
        $description =$_GET["description"];
        $release_date =$_GET["release_date"];
        $genre =$_GET["genre"];
        $esrb =$_GET["esrb"];
        
        $command = 'INSERT INTO game_info (id, title, description, release_date, genre, esrb, company, console) VALUES (:id, :title, :description, :release_date, :genre, :esrb, :company, :console)'; 
        
        $statement = $db->prepare($command);
        
        $statement->bindValue(':id', $pdo->lastInsertId('product_id_seq'));
        $statement->bindValue(':title', $title);
        $statement->bindValue(':description', $description);
        $statement->bindValue(':release_date', $release_date);
        $statement->bindValue(':genre', $genre);
        $statement->bindValue(':esrb', $esrb);
        $statement->bindValue(':company', $company);
        $statement->bindValue(':console', $console);
        
        
        
        $statement->execute();
        
        ?>
    </body>
</html>





