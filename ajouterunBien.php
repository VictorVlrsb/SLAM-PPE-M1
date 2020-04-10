<?php

$superficiejardin = $_POST['superficiejardin'];
$nbrpieces = $_POST['nbrpieces'];
$rue= $_POST['rue'];
$surface = $_POST['surface'];
$prix = $_POST['prix'];
$description = $_POST['description'];
$idLocalisation = $_POST['idLocalisation'];
$idType = $_POST['idType'];

var_dump(ajouterBien(connexion(),$superficiejardin,$nbrpieces,$rue,$surface,$prix,$description,$idLocalisation,$idType));


?>
