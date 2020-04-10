<?php

function connexion(){
    try {
        $connexion = new PDO('mysql:host=localhost;dbname=bddmcvimmo;charset=utf8','root','root');
        echo 'Connexion reussie !';
        return $connexion;
    } catch (Exception $e) {
        echo 'Connexion échouée : ' . $e -> getMessage();
        return 'erreur';
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
        if (checkPWD($mdp, $lemdp) == true) {
            echo 'Vous êtes connecté avec vos identifiants.';
        }
    }
}

function chercherbien($connexion,$superficiejardin,$nbrpieces,$surfMin,$surfMax,$budget,$idLocalisation,$idType){
    $monObjPdoStatement =  $connexion->prepare('SELECT * FROM bien WHERE nbrpieces >= :nbrpieces AND superficiejardin >= :superficiejardin AND surface BETWEEN :surfMin AND :surfMax AND prix <= :budget AND idLocalisation = :idLocalisation AND idType = :idType');
    $bvc1=$monObjPdoStatement->bindValue(':nbrpieces',$nbrpieces,PDO::PARAM_STR);
	
	$superficiejardin0 = 0;
	
	if($superficiejardin > 0){
		$bvc2=$monObjPdoStatement->bindValue(':superficiejardin',$superficiejardin,PDO::PARAM_STR);
	}
	else{
		$bvc2=$monObjPdoStatement->bindValue(':superficiejardin',$superficiejardin0,PDO::PARAM_STR);
	}	
    $bvc3=$monObjPdoStatement->bindValue(':surfMin',$surfMin,PDO::PARAM_STR);
    $bvc4=$monObjPdoStatement->bindValue(':surfMax',$surfMax,PDO::PARAM_STR);
    $bvc5=$monObjPdoStatement->bindValue(':budget',$budget,PDO::PARAM_STR);
    $bvc6=$monObjPdoStatement->bindValue(':idLocalisation',$idLocalisation,PDO::PARAM_STR);
    $bvc7=$monObjPdoStatement->bindValue(':idType',$idType,PDO::PARAM_STR);

    $reqExec = $monObjPdoStatement->execute();
    $lesbiens = $monObjPdoStatement->fetchAll();
    return $lesbiens;
}

function ajouterBien($objPDO,$superficieJardin,$nbrpieces,$rue,$surface,$prix,$description,$idLocalisation,$idType){
  $monObjPdoStatement=$objPDO->prepare('Insert into bien values (null,superificieJardin,nbrpieces,rue,surface,prix,description,idLocalisation,idType)');
  $bv1=$monObjPdoStatement->bindValue(':superficieJardin',$superficieJardin, PDO::PARAM_INT);
  $bv2=$monObjPdoStatement->bindValue(':nbrpieces',$nbrpieces, PDO::PARAM_INT);
  $bv3=$monObjPdoStatement->bindValue(':rue',$rue, PDO::PARAM_STR);
  $bv4=$monObjPdoStatement->bindValue(':surface',$surface, PDO::PARAM_INT);
  $bv5=$monObjPdoStatement->bindValue(':prix',$prix, PDO::PARAM_INT);
  $bv6=$monObjPdoStatement->bindValue(':description',$description, PDO::PARAM_STR);
  $bv7=$monObjPdoStatement->bindValue(':idLocalisation',$idLocalisation, PDO::PARAM_INT);
  $bv8=$monObjPdoStatement->bindValue(':idType',$idType, PDO::PARAM_INT);
  $monObjPdoStatement->execute();
  $req=$monObjPdoStatement->fetchall();
  return $req;
}

function supprimerBien($objPDO,$idBien){
  $monObjPdoStatement=$objPDO->prepare('Delete * from bien where idBien=:idBien');
  $bv1=$monObjPdoStatement->bindValue(':idBien',$idBien,PDO::PARAM_STR);
  $monObjPdoStatement->execute();
  $req=$monObjPdoStatement->fetch();
  return $req;
}

function modifierBien($objPDO){
  return null;
}



?>
