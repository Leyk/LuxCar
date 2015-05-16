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
		$nom = $_REQUEST['nom'];
		$prenom = $_REQUEST['prenom'];
		$mail = $_REQUEST['mail'];
		$mdp = $_REQUEST['mdp'];
		$utilisateur = $pdo->checkMail($mail);
		if(is_array($utilisateur)){
			ajouterErreur("Cette adresse mail est déjà utilisée","inscription");
			include ("vues/v_inscription.php");
		}
		else{
			$ok=$pdo->creerNouvelUtilisateur($nom,$prenom,$mail,$mdp);
			if ($ok){
				// A ARRANGER
				echo "Inscription réussie";
				include("vues/v_accueil.html");
			}
			else{
				ajouterErreur("Echec de l'inscription","inscription");
				include ("vues/v_inscription.php");
			}
		}
		break;
	}
	default:{
		include ("vues/v_inscription.php");
		break;
	}
}
?>