<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'consulterCatalogue';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'consulterCatalogue':{
		$lesMarques = $pdo->getLesMarques();
		if(!is_array($lesMarques)){
			ajouterErreur("Erreur de chargement des marques","catalogue");
		}
		include("vues/v_marque.php");
		break;
	}
	default:{
		include ("vues/v_marque.php");
		break;
	}
}
?>