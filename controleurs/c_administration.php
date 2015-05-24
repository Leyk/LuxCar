<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'consulterDevis';
}
if ($pdo->estConnecte()){
	$user = $pdo->getUserConnecte();
	if ($user['idCategorie']=="AD"){
		$action = $_REQUEST['action'];
		switch ($action) {
			case 'consulterDevis':{
				$lesDevis = $pdo->getLesDevis();
				if(!is_array($lesDevis)){
					ajouterInfo("Il n'y a aucun devis!","devis");
					$nbDevis = 0;
				} 
				else {
					$nbDevis = count($lesDevis);
				}
				include("vues/v_devis.php");
				break;
			}
			case 'validerDevis':{
				if(isset($_REQUEST['id'])){
					$req = $pdo->validerDevis($_REQUEST['id']);
					if ($req){
						ajouterInfo("Le devis a bien été validé !","admin");
					}
				}
				else {
					ajouterErreur("Erreur : il faut sélectionner un devis à valider","admin");
				}
				$lesDevis = $pdo->getLesDevis();
				if(!is_array($lesDevis)){
					ajouterInfo("Il n'y a aucun devis!","devis");
					$nbDevis = 0;
				} 
				else {
					$nbDevis = count($lesDevis);
				}
				include("vues/v_devis.php");
				break;
			}
			case 'creerOption':{
				include("vues/v_fromOption.php");
				break;
			}
			case 'valideCreationOption':{
				$rs = $pdo->creerOption($_POST['nomOption'], $_POST['descOption'], $_POST['prixOption']);
				if($rs){
					ajouterInfo("Félicitation, l'option ".$_POST['nomOption']." a bien été créée !","admin");
				}
				else{
					ajouterErreur("Erreur : un problème est survenu lors de la création de votre option. Vérifiez que les champs sont valides","admin");
				}
				include("vues/v_administration.php");
				break;
			}
			case 'demanderAdministration':{
				include("vues/v_administration.php");
				break;
			}
		}
	}
	else {
		echo "Erreur : il faut être connecté en tant qu'administrateur !";
	}
}
else {
	echo "Erreur : il faut être connecté en tant qu'administrateur !";
}


?>