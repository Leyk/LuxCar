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


// Enregistre dans une variable session le token d'un utilisateur
function connecter($id){
	try{
		//$_COOKIE['idUser'] = $id;
		setcookie('idUser',$id);
		$token = uniqid();
		setcookie('tokenUser',$token);
		$req = 'UPDATE Inscrit SET token ="'.$token.'" WHERE idInscrit ='.$id;
		$rs = PdoLxc::$monPdo->exec($req);	
		return $rs;
	}
	catch (Exception $e){
			echo "Erreur de récupération de connexion utilisateur : ", $e->getMessage();
		}	
}

// Déconnecte l'utilisateur
function deconnecter($id) {
	try{
		$req = 'UPDATE Inscrit SET token = NULL WHERE idInscrit='.$id;
		$rs = PdoLxc::$monPdo->exec($req);
		setcookie('idUser','',-1);
		setcookie('tokenUser','',-1);
		return $rs;
	}
	catch (Exception $e){
			echo "Erreur delete du token : ", $e->getMessage();
		}	
}

// Teste si un utilisateur est connecté
function estConnecte(){
	if (isset($_COOKIE['idUser']) and isset($_COOKIE['idUser'])){
		$id = $_COOKIE['idUser'];
		$token = $_COOKIE['tokenUser'];
		$req = 'SELECT idInscrit FROM Inscrit WHERE token="'.$token.'" and idInscrit='.$id;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		if(!is_array($ligne)){
			return False;
		}
		else {
			return True;
		}
	}
	else{
		return False;
	}
}

// Retourne les informations d'un utilisateur
	public function checkUser($login,$mdp){
		try{
		$req = 'SELECT idInscrit from inscrit where mailInscrit="'.$login.'" and pswInscrit="'.$mdp.'"';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
		}
		catch (Exception $e){
			echo "Identifiants incorrects : ", $e->getMessage();
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

// Récupère l'utilisateur actuellement connecté
	public function getUserConnecte(){
		if (estConnecte()) {
			try{
				$req = 'SELECT idInscrit, nomInscrit, prenomInscrit from inscrit where token="'.$_COOKIE['userToken'];
				$rs = PdoLxc::$monPdo->query($req);
				$ligne = $rs->fetch();
				return $ligne;
			}
			catch (Exception $e){
			echo "Erreur de récupération des données Utilisateur : ", $e->getMessage();
			}	
		}
	}

// Récupère les options existantes dans la bd
	public function getLesOptions(){
		$req = 'SELECT idOption, nomOption, descriptionOption, prixOption FROM options ORDER BY nomOption';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Crée un devis
	public function creerDevis(){
		$iduser = $monPdo->getUserConnecte().['idInscrit'];
	}
}