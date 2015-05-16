<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'demandeConnexion';
}
$action = $_REQUEST['action'];
switch ($action) {
	case 'demandeConnexion':{
		include ("vues/v_connexion.php");
		break;
	}
	
	default:{
		include ("vues/v_connexion.php");
		break;
	}
}
?>