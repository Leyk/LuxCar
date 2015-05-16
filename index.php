<?php 
require_once ("include/fonctions.php");
require_once ("include/class.pdoluxcar.php");
include ("vues/v_entete.html");
include("vues/v_menu.php");
session_start();
$pdo = PdoLxc::getPdoLxc();
$estConnecte = estConnecte(); // connexion d'un utilisateur
if(!isset($_REQUEST['uc'])) {
	$_REQUEST['uc'] = 'accueil';
}
$uc = $_REQUEST['uc'];
switch ($uc) {
	case 'accueil':{
		include("vues/v_accueil.html");
		break;
	}
	case 'connexion':{
		include("controleurs/c_connexion.php");
		break;
	}
	case 'catalogue':{
		include("controleurs/c_catalogue.php");
		break;
	}
	case 'inscription':{
		include("controleurs/c_inscription.php");
	}
	default:{
		include("vues/v_accueil.html");
		break;
	}
}
include("vues/v_pied.html");
?>

