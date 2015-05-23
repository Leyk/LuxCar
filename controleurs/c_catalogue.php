<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'choisirMarque';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'choisirMarque':{
		$lesMarques = $pdo->getLesMarques();
		if(!is_array($lesMarques)){
			ajouterErreur("Erreur de chargement des marques","marque");
		}
		include("vues/v_marque.php");
		break;
	}

	case 'choisirModele':{
		$mar=$_REQUEST['mar'];
		$lesModeles = $pdo->getLesModeles($mar);
		if(!is_array($lesModeles)){
			ajouterErreur("Erreur de chargement des modèles","modele");
		}
		include("vues/v_modele.php");
		break;
	}

	case 'creerDevis':{
		if ($pdo->estConnecte()){
			if(isset($_REQUEST['mar']) and isset($_REQUEST['mod'])){
				$crea=$devis = $pdo->creerDevis($_REQUEST['mar'], $_REQUEST['mod']);
				if ($crea){
					ajouterInfo("Félicitation, votre devis a bien été créé !","devis");
				}
				else {
					ajouterErreur("Erreur de création du devis","devis");
				}
				$lesOptions = $pdo->getLesOptions();
				if(!is_array($lesOptions)){
					ajouterErreur("Erreur de chargement des options","devis");
				}
			}
			else {
				ajouterErreur("Il vous faut choisir une marque et un modèle de voiture pour créer un devis !","Devis");
			}
		}
		else {
			ajouterErreur("Il vous faut être membre pour créer un devis : inscrivez-vous ou bien connectez-vous !","Devis");
		}
		include("vues/v_option.php");
		break;
	}

	case 'voirOptions':{
		$lesOptions = $pdo->getLesOptions();
		if(!is_array($lesOptions)){
			ajouterErreur("Erreur de chargement des options","option");
		}
		include("vues/v_option.php");
		break;
	}

	case 'consulterDevis':{
		if($pdo->estConnecte()){
			$user = $pdo->getUserConnecte();
			if(is_array($user)){
				$id = $user['idInscrit'];
				$lesDevis=$pdo->getLesDevisUser($id);
			}
			else{
				ajouterErreur("Erreur de récupération des données utilisateur","Devis");
			}
		}
		else {
			ajouterErreur("Il vous faut être connecté pour consulter vos devis !","Devis");
		}
	include("vues/v_devis.php");
	break;	
	}

	default:{
		echo '<h4 class="text-danger"> Erreur </h4>'; ;
		break;
	}
}
?>