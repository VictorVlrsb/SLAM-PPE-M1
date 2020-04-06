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
            $superficiejardin = 100000000;
          }

          $surfMin = $_POST['surfMin'];
          $surfMax = $_POST['surfMax'];
          $connexion= connexion();
          $nbrpieces = $_POST['pieces'];
          var_dump($superficiejardin,$nbrpieces,$surfMin,$surfMax,$budget,$lieux,$type);
          var_dump($connexion);
          echo 'Test chercherbien';
          var_dump(chercherbien(connexion(),$superficiejardin,$nbrpieces,$surfMin,$surfMax,$budget,$lieux,$type));
        ?>
    </body>
</html>
