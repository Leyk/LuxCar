<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'choisirCatalogue';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'choisirCatalogue';{
		include("vues/v_catalogue.php");
		break ;
	}

	case 'choisirMarque':{
		$lesMarques = $pdo->getLesMarques();
		if(!is_array($lesMarques)){
			ajouterErreur("Erreur de chargement des marques","catalogue");
		}
		include("vues/v_marque.php");
		break;
	}

	case 'choisirModele':{
		if(isset($_REQUEST['mar'])){
			$mar=$_REQUEST['mar'];
			$lesModeles = $pdo->getLesModeles($mar);
			if(!is_array($lesModeles)){
				ajouterErreur("Erreur de chargement des modèles","catalogue");
			}
		}
		else{
			ajouterErreur("Erreur : vous devez au préalable sélectionner une marque","catalogue");
		}
		include("vues/v_modele.php");
		break;
	}

	case 'voirOptions':{
		$lesOptions = $pdo->getLesOptions();
		if(!is_array($lesOptions)){
			ajouterErreur("Erreur de chargement des options","catalogue");
		}
		include("vues/v_option.php");
		break;
	}

	default:{
		echo '<h4 class="text-danger"> Erreur </h4>'; ;
		break;
	}
}
?>