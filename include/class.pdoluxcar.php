<?php
include_once ("fonctions.php");
/**
 * Classe d'accès aux données
 */

class PdoLxc{
	private static $serveur='mysql:host=127.0.0.1';
	private static $bd='dbname=LuxCar';
	private static $user='root';
	private static $mdp='';
	private static $monPdo;
	private static $monPdoLxc=null;

// Crée l'instance de PDO qui sera sollicitée pour toutes les méthodes de la classe */
	private function __construct(){
		try{
			PdoLxc::$monPdo = new PDO(PdoLxc::$serveur.';'.PdoLxc::$bd, PdoLxc::$user, PdoLxc::$mdp);
			PdoLxc::$monPdo->query("SET CHARACTER SET utf8");
		}
		catch (Exception $e){
			echo "Erreur de connexion au serveur : ", $e->getMessage();
		}	
	}

	public function _destruct(){
		PdoLxc::$monPdo = null ;
	}

// Crée l'unique instance de la classe */
	public static function getPdoLxc(){
		if(PdoLxc::$monPdoLxc==null){
			PdoLxc::$monPdoLxc = new PdoLxc();
		}
		return PdoLxc::$monPdoLxc;
	}

// Retourne les informations d'un utilisateur
	public function getInfosUtilisateur($login,$mdp){
		try{
		$req = 'select idInscrit, nomInscrit, prenomInscrit, token from inscrit where mailInscrit="'.$login.'" and pswInscrit="'.$mdp.'"';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
		}
		catch (Exception $e){
			echo "Erreur de requête : ", $e->getMessage();
		}	
	}


}