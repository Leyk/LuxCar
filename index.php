<?php 
require_once ("include/fonctions.php");
require_once ("include/class.pdoluxcar.php");
include ("vues/v_entete.html");
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
	default:{
		include("controleurs/c_connexion.php");
		break;
	}
}
include("vues/v_pied.html");
?>

