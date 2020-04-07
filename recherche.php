<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php

        include_once 'mesFonctions.php';

        $type = $_POST['type'];
        $lieux = $_POST['lieux'];
        $budget = $_POST['budget'];
        if(isset($_POST['jardin'])){
                $check= $_POST['jardin'];
                $superficiejardin = 1;
          }
          else{
            $superficiejardin = 0;
          }

          $surfMin = $_POST['surfMin'];
          $surfMax = $_POST['surfMax'];
          $connexion= connexion();
          $nbrpieces = $_POST['pieces'];
		  
          var_dump(chercherbien($connexion,$superficiejardin,$nbrpieces,$surfMin,$surfMax,$budget,$lieux,$type));
        ?>
    </body>
</html>
