<?php
/**
 * Fonctions pour l'application des devis de voitures
 */


// Teste si un utilisateur est connecté
function estConnecte(){
	return isset($_SESSION['token']);
}
?>