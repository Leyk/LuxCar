<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'consulterDevis';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'creerDevis':{
		if ($pdo->estConnecte()){
			if(isset($_REQUEST['mar']) and isset($_REQUEST['mod'])){
				$crea = $pdo->creerDevis($_REQUEST['mar'], $_REQUEST['mod']);
				if ($crea !=0){
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
				ajouterErreur("Il vous faut choisir une marque et un modèle de voiture pour créer un devis !","devis");
			}
		}
		else {
			ajouterErreur("Il vous faut être membre pour créer un devis : inscrivez-vous ou bien connectez-vous !","devis");
		}
		include("vues/v_option.php");
		break;
	}

	case 'consulterDevis':{
		if($pdo->estConnecte()){
			$user = $pdo->getUserConnecte();
			if(is_array($user)){
				$id = $user['idInscrit'];
				$lesDevis = $pdo->getLesDevisUser($id);
				$nbDevis = count($lesDevis);
			}
			else{
				ajouterErreur("Erreur de récupération des données utilisateur","devis");
			}
		}
		else {
			ajouterErreur("Il vous faut être connecté pour consulter vos devis !","devis");
		}
	include("vues/v_devis.php");
	break;	
	}

	case 'detailsDevis':{
		if($pdo->estConnecte()){
			if (isset($_REQUEST['id'])){
				$user = $pdo->getUserConnecte();
				if(is_array($user)){
					$iddev = $_REQUEST['id'];
					$lesOptions = $pdo->getLesOptionsChoisies($iddev);
					if($pdo->estAdmin()){
						$leDevis = $pdo->getLeDevis($iddev);
					} else {
						$iduser = $user['idInscrit'];
						$leDevis = $pdo->getDetailsDevis($iddev,$iduser);						
					}
					if(!is_array($leDevis)){
						ajouterErreur("Erreur de chargement du devis, veuillez vérifier sa référence","devis");
					}
				}
				else{
					ajouterErreur("Erreur de récupération des données utilisateur","devis");
				}
			}	
			else {
				ajouterErreur("Il vous faut choisir un devis à consulter !","devis");
			}	
		}
		else {
			ajouterErreur("Il vous faut être connecté pour consulter vos devis !","devis");
		}
	include("vues/v_detailsDevis.php");
	if(isset($lesOptions)){
		if(count($lesOptions)>0){
			include("vues/v_option.php");
		}
	}
	break;
	}

	case 'ajouterOption':{
		if (isset($_POST['cbxoption'])){
			$options = $_POST['cbxoption'];
			if (isset($_REQUEST['dev'])){
				$iddev = $_REQUEST['dev'];
				$lesIdOptions = $pdo->ajouterOption($iddev,$options);
				if(is_array($lesIdOptions)){
					ajouterInfo("Félicitation, vos options ont bien été ajoutées à votre devis ".$iddev." ","devis");
					$lesOptions = $pdo->getLesOptionsChoisies($iddev);
					include("vues/v_option.php");
				}
				else {
					include("vues/v_accueil.html");
				}
			}
			else {
				ajouterErreur("Il vous faut choisir un devis auquel ajouter une option !","devis");
				include("vues/v_option.php");
			}	
		}
		else if(isset($_REQUEST['dt'])){
			$crea = $_REQUEST['id'];
			$lesOptions = $pdo->getLesOptionsDispo($crea);
			if (is_array($lesOptions)){
				include("vues/v_option.php");
			}
			else {
				ajouterErreur("Vous ne pouvez plus rajouter d'options, vous avez déjà sélectionné toutes les options disponibles","devis");
			}
		}
		else{
			include("vues/v_accueil.html");
		}
		break;
	}
	default:{
		echo '<h4 class="text-danger"> Erreur </h4>'; ;
		break;
	}
}
?>