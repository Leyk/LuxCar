<?php
/**
 * Fonctions pour l'application des devis de voitures
 */




// Ajoute le libellé d'une erreur au tableau des erreurs
function ajouterErreur($msg,$form){
	if(!isset($_REQUEST['erreurs'])){
		$_REQUEST['erreurs'] = array();
		$_REQUEST['erreurForm'] = $form;
	}
	$_REQUEST['erreurs'][] = $msg ;
}
?>