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

function ajouterInfo($msg,$form){
	if(!isset($_REQUEST['info'])){
		$_REQUEST['info'] = array();
		$_REQUEST['infoForm'] = $form;
	}
	$_REQUEST['info'][] = $msg ;
}

function dateAnglaisVersFrancais($maDate){
   @list($annee,$mois,$jour)=explode('-',$maDate);
   $date=$jour."/".$mois."/".$annee;
   return $date;
}

?>