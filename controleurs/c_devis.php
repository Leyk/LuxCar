<?php
if(!isset($_REQUEST['action'])){
	$_REQUEST['action'] = 'consulterDevis';
}
$action = $_REQUEST['action'];
switch ($action) {
/* le User connecté souhaite créer un devis, après avoir sélectionné une marque et un modèle de voiture */
	case 'creerDevis':{
		if ($pdo->estConnecte()){
			if(isset($_REQUEST['mar']) and isset($_REQUEST['mod'])){     // Vérification que le User est connecté et qu'il a choisi marque et modèle
				$crea = $pdo->creerDevis($_REQUEST['mar'], $_REQUEST['mod']);
				if ($crea !=0){												// Vérification que le devis a bien été créé
					ajouterInfo("Félicitation, votre devis a bien été créé !","devis");
				}
				else {
					ajouterErreur("Erreur de création du devis","devis");   // Erreur si problème de création
				}
				$lesOptions = $pdo->getLesOptions();						// Affichage des options
				if(!is_array($lesOptions)){
					ajouterErreur("Erreur de chargement des options","devis");  // Erreur si pas d'options à afficher
				}
			}
			else {
				ajouterErreur("Il vous faut choisir une marque et un modèle de voiture pour créer un devis !","devis"); // Erreur si pas de marque et modèle sélectionnés
			}
		}
		else {
			ajouterErreur("Il vous faut être membre pour créer un devis : inscrivez-vous ou bien connectez-vous !","devis");  // Erreur si User pas connecté
		}
		include("vues/v_option.php");
		break;
	}
/* le User connecté souhaite consulter les devis qu'il a créés */
	case 'consulterDevis':{
		if($pdo->estConnecte()){    
			$user = $pdo->getUserConnecte();   // Récupération de l'ID du User connecté
			if(is_array($user)){
				$id = $user['idInscrit'];
				$lesDevis = $pdo->getLesDevisUser($id);   // Récupération des devis du User connecté
				if(!is_array($lesDevis)){
					ajouterInfo("Il n'y a aucun devis!","devis");
					$nbDevis = 0;	
					include("vues/v_devis.php");					
				}
				else {
					$nbDevis = count($lesDevis);   // Comptage du nombre de devis
					include("vues/v_devis.php");
				}
			}
			else{
				ajouterErreur("Erreur de récupération des données utilisateur","devis");   // Erreur de connexion utilisateur
				header('Refresh : 1; URL=index.php?uc=accueil');
			}
		}
		else {
			ajouterErreur("Il vous faut être connecté pour consulter vos devis !","devis");  
			header('Refresh : 1; URL=index.php?uc=accueil');   // Redirection vers accueil si User pas connecté
		}
	break;	
	}

/* le User connecté souhaite consulter un de ses devis en particulier (les détails) */
	case 'detailsDevis':{
		if($pdo->estConnecte()){
			if (isset($_REQUEST['id'])){
				$user = $pdo->getUserConnecte();   // Récupération du User connecté
				if(is_array($user)){
					$iddev = $_REQUEST['id'];
					$lesOptions = $pdo->getLesOptionsChoisies($iddev);   // Récupération des options choisies pour l'ID du devis sélectionné par le User
					if($pdo->estAdmin()){
						$leDevis = $pdo->getLeDevis($iddev);   // Si le User est Admin -> récupération des infos du devis grâce à  l'ID du devis sélectionné
						include("vues/v_detailsDevis.php");
					} else {
						$iduser = $user['idInscrit'];
						$leDevis = $pdo->getDetailsDevis($iddev,$iduser);	// Si le User n'est pas Admin, par sécurité on récupère le devis qui correspond à l'ID du devis ET l'ID du User connecyé afin qu'il ne puisse pas voir les devis de n'importe qui				
						include("vues/v_detailsDevis.php");
					}
					if(!is_array($leDevis)){
						ajouterErreur("Erreur de chargement du devis, veuillez vérifier sa référence","devis");  // Erreur s'il n'y a pas de devis
						header('Refresh : 1; URL=index.php?uc=accueil');
					}
				}
				else{
					ajouterErreur("Erreur de récupération des données utilisateur","devis"); // Erreur avec la connexion de l'utilisation
					header('Refresh : 1; URL=index.php?uc=accueil');
				}
			}	
			else {
				ajouterErreur("Il vous faut choisir un devis à consulter !","devis"); // Erreur si aucun devis sélectionné
				header('Refresh : 2; URL=index.php?uc=accueil');
			}	
		}
		else {
			ajouterErreur("Il vous faut être connecté pour consulter vos devis !","devis"); // Erreur si User pas connecté
			header('Refresh : 2; URL=index.php?uc=accueil');
		}
	if(isset($lesOptions)){
		if(count($lesOptions)>0){
			include("vues/v_option.php");   // Affichage du tableau d'options uniquement s'il y en a (nbOption >0)
		}
	}
	break;
	}
/* le User connecté souhaite ajouter une option pour le devis sélectionné */
	case 'ajouterOption':{
		if (isset($_POST['cbxoption'])){
			$options = $_POST['cbxoption'];
			if (isset($_REQUEST['dev'])){
				$iddev = $_REQUEST['dev'];
				$lesIdOptions = $pdo->ajouterOption($iddev,$options);
				if(is_array($lesIdOptions)){
					ajouterInfo("Félicitation, vos options ont bien été ajoutées à votre devis ".$iddev." ","devis");
					$lesOptions = $pdo->getLesOptionsChoisies($iddev);
					include("vues/v_option.php");
				}
				else {
					include("vues/v_accueil.html");
				}
			}
			else {
				ajouterErreur("Il vous faut choisir un devis auquel ajouter une option !","devis");
				include("vues/v_option.php");
			}	
		}
		else if(isset($_REQUEST['dt'])){
			$crea = $_REQUEST['id'];
			$lesOptions = $pdo->getLesOptionsDispo($crea);
			if (is_array($lesOptions)){
				include("vues/v_option.php");
			}
			else {
				ajouterErreur("Vous ne pouvez plus rajouter d'options, vous avez déjà sélectionné toutes les options disponibles","devis");
			}
		}
		else{
			include("vues/v_accueil.html");
		}
		break;
	}
/* Pour les URL non reconnues ici */
	default:{
		echo '<h4 class="text-danger"> Erreur : la page demandée n\'existe pas. </h4>';
		header('Refresh : 2; URL=index.php?uc=accueil');  // Redirection vers la page d'accueil
		break;
	}
}
?>