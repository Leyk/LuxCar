<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'demandeConnexion';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'demandeConnexion':{
		include ("vues/v_connexion.php");
		break;
	}
	case 'valideConnexion':{
		$login = $_REQUEST['login'];
		$mdp = $_REQUEST['mdp'];
		$utilisateur = $pdo->checkUser($login,$mdp);
		if(!is_array($utilisateur)){
			ajouterErreur("Login ou mot de passe incorrecte","connexion");
			include ("vues/v_connexion.php");
		}
		else{
			$id = $utilisateur['idInscrit'];
			$pdo->connecter($id);
			echo "Connexion effectuée, vous allez être redirigé dans 3 secondes";
			header('Refresh : 3; URL=index.php');
		}
		break;
	}
	case 'deconnexion':{
		$id = $_COOKIE['idUser'];
		$pdo->deconnecter($id);
		echo "Vous avez bien été déconnecté".$_COOKIE['idUser'].", vous allez être redirigé dans 2 secondes";
		header('Refresh : 2; URL=index.php');
	}
	default:{
		include ("vues/v_connexion.php");
		break;
	}
}
?>