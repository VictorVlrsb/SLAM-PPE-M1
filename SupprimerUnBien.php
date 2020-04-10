<?php
include_once 'mesFonctions.php';

$idBien=$_POST['idBien'];

var_dump(supprimerBien(connexion(),$idBien));

?>
