<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'demandeConnexion';
}
$action = $_REQUEST['action'];
switch ($action) {
/* le User valide le formulaire de connexion */
	case 'valideConnexion':{
		if (!$pdo->estConnecte()){   // Vérification User pas déjà connecté
			if (isset($_REQUEST['login']) and isset($_REQUEST['mdp'])){
				$login = $_REQUEST['login'];
				$mdp = $_REQUEST['mdp'];
				$utilisateur = $pdo->checkUser($login,$mdp);   // Vérification login/mot de passe corrects
				if(!is_array($utilisateur)){
					ajouterErreur("Login ou mot de passe incorrecte","connexion");  // Erreur identifiants incorrects
					include ("vues/v_connexion.php");
				}
				else{
					$id = $utilisateur['idInscrit'];
					$co = $pdo->connecter($id);   // Connexion de l'utilisateur -> envoie des cookies, attribution d'un token dans la BD
					if ($co) {
						header('Refresh : 0; URL=index.php?uc=accueil');  // Redirection accueil si la connexion a réussie
					}
				}
			}
			else {
				ajouterErreur("Login ou mot de passe incorrecte","connexion"); // Erreur si identifiants incorrects (car où le User n'est pas passé par le formulaire)
			}
		}
		else {
			header('Refresh : 0; URL=index.php?uc=accueil');  // Redirection accueil si User déjà connecté
		}
		break;
	}
/* le User souhaite se déconnecter */
	case 'deconnexion':{
		if ($pdo->estConnecte()){            // Déconnexion si un User est connecté
			$id = $_COOKIE['idUser'];
			$deco = $pdo->deconnecter($id);
		}
		header('Refresh : 0; URL=index.php?uc=accueil');  // Redirection vers la page d'accueil
		break;
	}
/* Pour les URL non reconnues ici */
	default:{
		echo '<h4 class="text-danger"> Erreur : la page demandée n\'existe pas. </h4>';
		header('Refresh : 2; URL=index.php?uc=accueil');  // Redirection vers la page d'accueil
		break;
	}
}
?>