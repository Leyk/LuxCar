<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'demandeInscription';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'demandeInscription':{
		include ("vues/v_inscription.php");
		break;
	}
	case 'valideInscription':{
		$login = $_REQUEST['login'];
		$mdp = $_REQUEST['mdp'];
		$utilisateur = $pdo->getInfosUtilisateur($login,$mdp);
		if(!is_array($utilisateur)){
			ajouterErreur("Login ou mot de passe incorrecte","connexion");
			include ("vues/v_connexion.php");
		}
		else{
			$id = $utilisateur['idInscrit'];
			// GENERER ICI UN TOKEN ALEATOIRE
			$token = $utilisateur['token'];
			connecter($id,$token);
			include("vues/v_accueil.html");
			// A SUPPR
			echo "Bonjour ".$utilisateur['prenomInscrit'];
		}
		break;
	}
	case 'deconnexion':{
		deconnecter();
		echo "Vous avez bien été déconnecté";
	}
	default:{
		include ("vues/v_inscription.php");
		break;
	}
}
?>