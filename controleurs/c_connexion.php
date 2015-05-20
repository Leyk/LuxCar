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
			include("vues/v_accueil.html");
			echo "c_connexion".$_COOKIE['idUser'];
		}
		break;
	}
	case 'deconnexion':{
		
		$pdo->deconnecter($id);

		echo "Vous avez bien été déconnecté";
	}
	default:{
		include ("vues/v_connexion.php");
		break;
	}
}
?>