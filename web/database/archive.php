<html>
    <head>
        <title>Archive</title>
        <link rel="stylesheet" href="homepage.css">
    </head>
    <body>
        <div id="container">
            <header>
                <h1>VIDEO GAMES<br>ARCHIVE</h1>
            </header>
            <div id="subheader">
                <a href="homepage.php">Back to Home</a>
                <a href="insert.html">Add a game</a>
            </div>
            <div id="games">
            
            <?php

            require("dbConnect.php");

            $db = get_db();

            $statement = $db->prepare('SELECT * FROM game JOIN game_info ON game.game_info = game_info.id');
            $statement->execute();
        
            while ($row = $statement->fetch(PDO::FETCH_ASSOC))
            {
                echo '<div id="game">';
            
                echo "<strong>" . $row['title'] . "</strong><br>" . $row['company'] . " - " . $row['console'] . "<br>";
            
                echo $row['genre'] . " - ESRB Rating: " . row['esrb'];
                
                echo $row['description'];
            
                echo '</div>';
            }

            ?>
                
            </div>
        </div>
    </body>
</html>