<?php
/**
 * Fonctions pour l'application des devis de voitures
 */


// Teste si un utilisateur est connecté
function estConnecte(){
	return isset($_SESSION['token']);
}

// Enregistre dans une variable session l'id et le token d'un utilisateur
function connecter($id,$token){
	$_SESSION['idUtilisateur'] = $id;
	$_SESSION['token'] = $token;
}

// Déconnecte l'utilisateur
function deconnecter() {
	session_destroy();
}

// Ajoute le libellé d'une erreur au tableau des erreurs
function ajouterErreur($msg,$form){
	if(!isset($_REQUEST['erreurs'])){
		$_REQUEST['erreurs'] = array();
		$_REQUEST['erreurForm'] = $form;
	}
	$_REQUEST['erreurs'][] = $msg ;
}
?>