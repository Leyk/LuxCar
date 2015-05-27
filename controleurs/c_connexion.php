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
			$co = $pdo->connecter($id);
			if ($co) {
				echo "Connexion effectuée";
				header('Refresh : 0; URL=index.php?uc=accueil');
			}
		}
		break;
	}
	case 'deconnexion':{
		if (isset($_COOKIE['idUser'])){
			$id = $_COOKIE['idUser'];
			$deco = $pdo->deconnecter($id);
			if ($deco){
				echo "Vous avez bien été déconnecté";
			header('Refresh : 0; URL=index.php?uc=accueil');
			}
		}
		break;
		include("vues/v_accueil.html");
	}
	default:{
		include ("vues/v_connexion.php");
		break;
	}
}
?>