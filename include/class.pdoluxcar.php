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
		$req = 'SELECT idInscrit, nomInscrit, prenomInscrit, token from inscrit where mailInscrit="'.$login.'" and pswInscrit="'.$mdp.'"';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
		}
		catch (Exception $e){
			echo "Erreur de récupération des données Utilisateur : ", $e->getMessage();
		}	
	}

// Vérifie si une adresse mail existe déjà
	public function checkMail($mail){
		try{
			$req = 'SELECT mailInscrit FROM inscrit WHERE mailInscrit="'.$mail.'"';
			$rs = PdoLxc::$monPdo->query($req);
			$ligne = $rs->fetch();
			return $ligne;
		}
		catch(Exception $e){
			echo "Erreur de vérification de mail : ", $e->getMessage();
		}
	}

// Créer un utilisateur qu'il s'inscrit
	public function creerNouvelUtilisateur($nom,$prenom,$mail,$mdp){
		$req = 'INSERT INTO inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) VALUES ("CL","'.$nom.'","'.$prenom.'","'.$mail.'","'.$mdp.'")';
		$res=PdoLxc::$monPdo->exec($req);
		return $res;
	}

// Récupère les marques existantes dans la bd
	public function getLesMarques(){
		$req = 'SELECT idMarque, nomMarque, logoMarque FROM marque';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Récupère les modèles de la marque passée en paramètre
	public function getLesModeles($id_marque){
		$req = 'SELECT nomModele, imgModele, prixModele, descriptionModele FROM modele WHERE idMarque ='.$id_marque ;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Récupère les options existantes dans la bd
	public function getLesOptions(){
		$req = 'SELECT nomOption, descriptionOption, prixOption FROM options ORDER BY nomOption';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}
}