<?php

include_once 'mesFonctions.php';

$login = $_POST['email'];
$mdp = $_POST['mdp'];

var_dump(checkUser(connexion(), $login, $mdp));
?>
