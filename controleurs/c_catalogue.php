<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'choisirMarque';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'choisirMarque':{
		$lesMarques = $pdo->getLesMarques();
		if(!is_array($lesMarques)){
			ajouterErreur("Erreur de chargement des marques","catalogue");
		}
		include("vues/v_marque.php");
		break;
	}
	case 'choisirModele':{
		$mar=$_REQUEST['mar'];
		$lesModeles = $pdo->getLesModeles($mar);
		if(!is_array($lesModeles)){
			ajouterErreur("Erreur de chargement des modèles","catalogue");
		}
		include("vues/v_modele.php");
		break;
	}
	case 'choisirOptions':{
		$lesOptions = $pdo->getLesOptions();
		if(!is_array($lesOptions)){
			ajouterErreur("Erreur de chargement des options","catalogue");
		}
		include("vues/v_option.php");
		break;
	}
	default:{
		echo "erreur" ;
		break;
	}
}
?>