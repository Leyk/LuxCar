<div class="row">
	<nav class="col-md-12">
		<ul class="list-inline">
			<li>
				<a href="index.php?uc=accueil">Accueil</a>
			</li>
			<li>
				<a href="index.php?uc=catalogue&action=choisirMarque">Catalogue</a>
			</li>
			<?php if($pdo->estConnecte()){ ?>
			<li>
				<a href="index.php?uc=catalogue&action=consulterDevis">Mes Devis</a>
			</li>
			<?php } 
			$user = $pdo->getUserConnecte();
			if(is_array($user)){
				$categ = $user['idCategorie'];
				if ($categ == "AD"){ ?>
			<li>
				<a href="index.php?uc=administration&action=demanderAdministration">Administration</a>
			</li>
			<?php }}
			if($pdo->estConnecte()==False){ ?>
			<li>
				<a href="index.php?uc=inscription&action=demandeInscription">Inscription</a>
			</li>
			<li>
				<a href="index.php?uc=connexion&action=demandeConnexion">Connexion</a>
			</li>
			<?php } if($pdo->estConnecte()){ ?>
			<li>
				<a href="index.php?uc=connexion&action=deconnexion">Deconnexion</a>
			</li>
			<?php } ?>
		</ul>
	</nav>
</div>