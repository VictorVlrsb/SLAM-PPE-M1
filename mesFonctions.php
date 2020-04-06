<?php

function connexion(){
    try {
        $connexion = new PDO('mysql:host=localhost;dbname=bddmcvimmo;charset=utf8','root','root');
        echo 'Connexion reussie !';
        return $connexion;
    } catch (Exception $e) {
        echo 'Connexion échouée : ' . $e . getMessage();
    }
}

function checkLogin($objPDO, $login) {
    $monObjPdoStatement = $objPDO->prepare('Select * from users where email=:email');
    $bv1 = $monObjPdoStatement->bindValue(':email', $login, PDO::PARAM_STR);
    $monObjPdoStatement->execute();
    $req = $monObjPdoStatement->fetchColumn();
    if ($req == false) {
        echo "Cet adresse mail n'est pas utilisée";
    }
    return $req;
}

function checkPWD($mdp, $pwd) {
    return password_verify($mdp, $pwd);
}


function checkUser($objPDO, $login, $mdp) {
    if (checkLogin($objPDO, $login) != false) {
        $monObjPdoStatement = $objPDO->prepare('Select mdp from users where email=:email');
        $bv1 = $monObjPdoStatement->bindValue(':email', $login, PDO::PARAM_STR);
        $req = $monObjPdoStatement->execute();
        $lemdp = $monObjPdoStatement->fetch();
        $pwd = $lemdp[0];
        if (checkPWD($mdp, $pwd) == true) {
            echo 'Vous êtes connecté avec vos identifiants.';
        }
    }
}




?>
