<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php

        $type = $_POST['type'];
          echo "Type de bien cherché ".$type;

          echo "<br>";
          echo "<br>";

          $lieux = $_POST['lieux'];
            echo "Situé à ".$lieux;

            echo "<br>";
            echo "<br>";

            $budget = $_POST['budget'];
            echo "Pour un budget de ".$budget." euros";

            echo "<br>";
            echo "<br>";

            if(isset($_POST['jardin'])){
                $check= $_POST['jardin'];
                echo "Avec un jardin";
          }

          echo "<br>";
          echo "<br>";

          $surfaceMin = $_POST['surfaceMin'];
          $surfaceMax = $_POST['surfaceMax'];
          echo "Pour une surface comprise entre ".$surfaceMin." et ".$surfaceMax." m²";

          echo "<br>";
          echo "<br>";

          $pieces = $_POST['pieces'];
          echo "Avec ".$pieces." pièces";


        ?>
    </body>
</html>
