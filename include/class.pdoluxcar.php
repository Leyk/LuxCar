<?php
include_once ("fonctions.php");
/**
 * Classe d'accès aux données
 */

// Affichage des erreurs
error_reporting(E_ALL | E_STRICT);
ini_set('display_errors',1);
ini_set('html_errors', 1);

class PdoLxc{
	private static $serveur='mysql:host=127.6.16.2:3306';
	private static $bd='dbname=my';
	private static $user='adminTgvMAiP';
	private static $mdp='H_kFxPUfR3Rl';

	//private static $serveur='mysql:host=127.0.0.1';
	//private static $bd='dbname=LuxCar';
	//private static $user='root';
	//private static $mdp='';
	private static $monPdo;
	private static $monPdoLxc=null;

// Crée l'instance de PDO qui sera sollicitée pour toutes les méthodes de la classe */
	private function __construct(){
		try{
			PdoLxc::$monPdo = new PDO(PdoLxc::$serveur.';'.PdoLxc::$bd, PdoLxc::$user, PdoLxc::$mdp);
			PdoLxc::$monPdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
			PdoLxc::$monPdo->query("SET CHARACTER SET utf8");
		}
		catch (PDOException $e){
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
		setcookie('idUser',$id);
		$token = uniqid();
		setcookie('tokenUser',$token);
		$req = 'UPDATE Inscrit SET token ="'.$token.'" WHERE idInscrit ='.$id;
		$rs = PdoLxc::$monPdo->exec($req);
		$reqselec = 'SELECT prenomInscrit FROM Inscrit WHERE token ="'.$token.'" AND idInscrit ='.$id;
		$rsselec = PdoLxc::$monPdo->query($reqselec);
		$user = $rsselec->fetch();
		$prenom = $user['prenomInscrit'];
		setcookie('prenomUser',$prenom);
		return $rs;
}

// Déconnecte l'utilisateur
function deconnecter($id) {
		$req = 'UPDATE Inscrit SET token = NULL WHERE idInscrit='.$id;
		$rs = PdoLxc::$monPdo->exec($req);
		setcookie('idUser','',-1);
		setcookie('tokenUser','',-1);
		setcookie('prenomUser','',-1);
		setcookie('categorieUser','',-1);
		return $rs;
}

// Teste si un utilisateur est connecté
function estConnecte(){
	if (isset($_COOKIE['tokenUser']) and isset($_COOKIE['idUser'])){
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
	else {
		return False;
	}
}

// Retourne les informations d'un utilisateur
	public function checkUser($login,$mdp){
		$req = 'SELECT idInscrit from Inscrit where mailInscrit="'.$login.'" and pswInscrit="'.$mdp.'"';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
	}

// Vérifie si une adresse mail existe déjà
	public function checkMail($mail){
			$req = 'SELECT mailInscrit FROM Inscrit WHERE mailInscrit="'.$mail.'"';
			$rs = PdoLxc::$monPdo->query($req);
			$ligne = $rs->fetch();
			return $ligne;
	}

// Créer un utilisateur qu'il s'inscrit
	public function creerNouvelUtilisateur($nom,$prenom,$mail,$mdp){
		$req = 'INSERT INTO Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) VALUES ("CL","'.$nom.'","'.$prenom.'","'.$mail.'","'.$mdp.'")';
		$res=PdoLxc::$monPdo->exec($req);
		return $res;
	}

// Récupère les marques existantes dans la bd
	public function getLesMarques(){
		$req = 'SELECT idMarque, nomMarque, logoMarque FROM Marque';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Récupère les modèles de la marque passée en paramètre
	public function getLesModeles($id_marque){
		$req = 'SELECT idModele, nomModele, imgModele, prixModele FROM Modele WHERE idMarque ='.$id_marque ;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}


// Récupère les options existantes dans la bd
	public function getLesOptions(){
		$req = 'SELECT idOption, nomOption, descriptionOption, prixOption FROM Options ORDER BY nomOption';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Récupère l'utilisateur actuellement connecté
	public function getUserConnecte(){
		if (isset($_COOKIE['tokenUser']) and isset($_COOKIE['idUser'])){
			$req = 'SELECT idInscrit, nomInscrit, prenomInscrit, idCategorie from Inscrit where token="'.$_COOKIE['tokenUser'].'" AND idInscrit='.$_COOKIE['idUser'];
			$rs = PdoLxc::$monPdo->query($req);
			$ligne = $rs->fetch();
			return $ligne;
		}
	}

// Récupère le prix d'un modèle de voiture à partir de son ID
	public function getPrixMod($id){
		$req = 'SELECT prixModele from Modele WHERE idModele ='.$id ;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
	}

// Crée un devis et retourne son ID
	public function creerDevis($mar, $mod){
		$user = $this->getUserConnecte();
		$iduser = $user['idInscrit'];
		$lemodele = $this->getPrixMod($mod);
		$prix = $lemodele['prixModele'];
		$req = 'INSERT INTO Devis (idInscrit, idMarque, idModele, dateDevis, prixDevis) VALUES ('.$iduser.','.$mar.','.$mod.','.date("Ymd").','.$prix.')';
		$prep = PdoLxc::$monPdo->prepare($req);
		$prep->execute(array());
		return PdoLxc::$monPdo->lastInsertId(); // pour récupérer l'ID du devis qui vient d'être créé
	}

// Récupérer les devis d'un utilisateur connecté (dont l'id est passé en paramètre)
	public function getLesDevisUser($id){
		$req = 'SELECT idDevis, nomMarque, nomModele,  nomEtat, dateDevis, prixDevis FROM Devis as d, Marque as ma, Modele as mo, Etat as e WHERE d.idMarque = ma.idMarque AND d.idModele = mo.idModele AND e.idEtat = d.idEtat AND d.idInscrit ='.$id;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Récupérer le devis dont l'id est passé en paramètre, avec toutes les informations le concernant. Pour éviter que n'importe qui puisse regarder les devis de tout le monde
	public function getDetailsDevis($iddev,$iduser){
		$req = 'SELECT d.idDevis, i.nomInscrit, i.prenomInscrit, i.mailInscrit, ma.nomMarque, mo.nomModele, d.idEtat, e.nomEtat, d.dateDevis, d.prixDevis, ma.logoMarque, mo.imgModele FROM Devis as d, Inscrit as i, Marque as ma, Modele as mo, Etat as e WHERE d.idInscrit = i.idInscrit AND d.idMarque = ma.idMarque AND d.idModele = mo.idModele AND d.idEtat = e.idEtat AND d.idDevis='.$iddev.' AND d.idInscrit ='.$iduser;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
	}	

// Récupérer le devis dont l'id est passé en paramètre. Cette fonction est a utiliser par les admin pour pouvoir récupérer n'importe quel devis aisément uniquement avec l'id du devis
	public function getLeDevis($iddev){
		$req = 'SELECT d.idDevis, i.nomInscrit, i.prenomInscrit, i.mailInscrit, ma.nomMarque, mo.nomModele, d.idEtat, e.nomEtat, d.dateDevis, d.prixDevis, ma.logoMarque, mo.imgModele FROM Devis as d, Inscrit as i, Marque as ma, Modele as mo, Etat as e WHERE d.idInscrit = i.idInscrit AND d.idMarque = ma.idMarque AND d.idModele = mo.idModele AND d.idEtat = e.idEtat AND d.idDevis='.$iddev;
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetch();
		return $ligne;
	}

// Ajouter des options à un devis
	public function ajouterOption($iddev, $lesOptions){
		$mesOptions = null ;  // mesOptions deviendra un tableau seulement si au moins une ligne est insérée dans la bd. Cela permet de tester si des options ont été ajouté et si c'est effectivement le cas, de les récupérer
		foreach ($lesOptions as $uneOption){
			$req = 'INSERT INTO LigneOption VALUES ('.$iddev.','.$uneOption.')';
			$rs = PdoLxc::$monPdo->exec($req);
			if($rs){
				if(!isset($mesOptions)){
					$mesOptions = [];
				}
				array_push($mesOptions, $uneOption);
			}
		}
		return $mesOptions;
	}

// Récupérer les options dont l'id est passé en paramètre
	public function getLesOptionsChoisies($iddev){
			$req = 'SELECT o.idOption, o.nomOption, o.descriptionOption, o.prixOption FROM LigneOption as l, Options as o WHERE l.idOption = o.idOption AND idDevis='.$iddev;
			$rs = PdoLxc::$monPdo->query($req);
			$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
			return $ligne;
	}

// Récupérer les options que ne possède pas le devis dont l'id est passé en paramètre
	public function getLesOptionsDispo($iddev){
		$req = 'SELECT * FROM Options WHERE idOption NOT IN (SELECT o.idOption FROM Options as o, LigneOption as l WHERE o.idOption=l.idOption AND l.idDevis = '.$iddev.')';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Récupérer tous les devis existants (pour l'Admin uniquement)
	public function getLesDevis(){
		$req = 'SELECT d.idDevis, d.idInscrit, nomMarque, nomModele,  nomEtat, dateDevis, prixDevis, nomInscrit, prenomInscrit, mailInscrit  FROM Devis as d, Marque as ma, Modele as mo, Etat as e, Inscrit as i WHERE d.idMarque = ma.idMarque AND d.idModele = mo.idModele AND e.idEtat = d.idEtat  AND i.idInscrit = d.idInscrit ORDER BY idDevis';
		$rs = PdoLxc::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
	}

// Savoir si un utilisateur connecté est admin
	public function estAdmin(){
		if (isset($_COOKIE['tokenUser']) and isset($_COOKIE['idUser'])){
				$req = 'SELECT idInscrit, nomInscrit, prenomInscrit, idCategorie from Inscrit where token="'.$_COOKIE['tokenUser'].'" AND idInscrit='.$_COOKIE['idUser'];
				$rs = PdoLxc::$monPdo->query($req);
				$ligne = $rs->fetch();
				$categ = $ligne['idCategorie'];
				if ($categ == "AD"){
					return True;
				} 
				else {
					return False;
				}
		}
		else {
			return False;
		}
	}

// Valider un devis
	public function validerDevis($iddev){
		$req = 'UPDATE Devis SET idEtat ="VA" WHERE idDevis='.$iddev;
		$rs = PdoLxc::$monPdo->exec($req);
		return $rs;
	}
	
// Créer une option
	public function creerOption($nomOpt, $descOpt, $prixOpt){
		$req = 'INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("'.$nomOpt.'","'.$descOpt.'",'.$prixOpt.')';
		$rs = PdoLxc::$monPdo->exec($req);
		return $rs;
	}
	
}