    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>    <!-- pour rétrécissement du menu sur petits écrans -->
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php?uc=accueil">LuxCar</a>  <!-- retour vers l'accueil -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">       <!-- menu "dropdown" 'catalogue' contenant : Les Marques ; Les Options -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Catalogue<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
            	<li><a href="index.php?uc=catalogue&amp;action=choisirMarque">Les Marques</a></li>
            	<li><a href="index.php?uc=catalogue&amp;action=voirOptions">Les Options</a></li>
            </ul>
            </li>
            <?php if($pdo->estConnecte()){ ?>   <!-- affiche "Mes Devis" si un User est connecté, "Inscription" sinon -->
            <li><a href="index.php?uc=devis&amp;action=consulterDevis">Mes Devis</a></li> <?php } if($pdo->estConnecte()==False){ ?>
            <li><a href="index.php?uc=inscription&amp;action=demandeInscription">Inscription</a></li>
            <?php } $user = $pdo->getUserConnecte();
			if(is_array($user)){
				if ($pdo->estAdmin()){ ?>
            <li class="dropdown"> <!-- menu "dropdown" 'administration' pour les Admin uniquement, contenant : Les Devis Clients (accès à la totalité des devis) ; Créer Option -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Administration<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="index.php?uc=administration&amp;action=consulterDevis">Les Devis Clients</a></li>
                <li><a href="index.php?uc=administration&amp;action=creerOption">Créer Option</a></li>
              </ul>
            </li>
            <?php }} ?>
          </ul>
          <form class="navbar-form navbar-right" method="POST" action="index.php?uc=connexion&amp;action=valideConnexion">
          <?php if(!$pdo->estConnecte()){ ;?>  <!-- User non connecté : formulaire de connexion utilisateur -> champs login/mot de passe -->
            <div class="form-group">
              <input type="text" id="login" name="login" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" id="mdp" name="mdp" placeholder="Password" class="form-control">
            </div>
            <?php $url = "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>  <!-- Récupère l'url de la page en cours pour que User ne soit pas redirigé -->
            <input type="hidden" name="url" value="<?php echo $url ?>" />
            <button type="submit" class="btn btn-primary">Connexion</button> <?php } else { ?> 
            <input type="button" name="Deconnexion" value="Deconnexion" onclick="self.location.href='index.php?uc=connexion&amp;action=deconnexion'" class="btn btn-primary"> <!-- User connecté : bouton de déconnexion -->
            <?php } ?>
          </form>          
        </div><!--/.nav-collapse -->
      </div>
    </nav>