<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'demandeInscription';
}
$action = $_REQUEST['action'];
switch ($action) {
/* le User souhaite s'inscrire -> envoi du formulaire d'inscription */
	case 'demandeInscription':{
		include ("vues/v_inscription.php");
		break;
	}
/* le User valide son inscription */
	case 'valideInscription':{        
		if(isset($_REQUEST['nom'])) and isset($_REQUEST['prenom'])) and  isset($_REQUEST['mail'])) isset($_REQUEST['mdp']))){  // Vérification que les champs du formulaire sont remplis
			$nom = $_REQUEST['nom'];
			$prenom = $_REQUEST['prenom'];
			$mail = $_REQUEST['mail'];
			$mdp = $_REQUEST['mdp'];
			$utilisateur = $pdo->checkMail($mail);   // Vérification que l'email saisie n'existe pas déjà dans la BD
			if(is_array($utilisateur)){
				ajouterErreur("Cette adresse mail est déjà utilisée","inscription"); // Erreur si email déjà utilisé
				include ("vues/v_inscription.php");
			}
			else{
				$ok=$pdo->creerNouvelUtilisateur($nom,$prenom,$mail,$mdp);   // Création du nouveau user dans la base
				if ($ok){
					ajouterInfo("Inscription réussie","inscription");
					header('Refresh : 2; URL=index.php?uc=accueil');  // Redirection vers la page d'accueil
				}
				else{
					ajouterErreur("Echec de l'inscription","inscription");  // Problème au niveau de la création du user
					include ("vues/v_inscription.php");
				}
			}
		}
		else {
			ajouterErreur("Erreur : Toutes les informations nécessaires à votre inscription ne sont pas spécifiées !","inscription");  // Erreur : aucun identifiant récupéré
			include ("vues/v_inscription.php");
		}
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