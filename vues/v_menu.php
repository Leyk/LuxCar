    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="index.php?uc=accueil">LuxCar</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Catalogue<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
            	<li><a href="index.php?uc=catalogue&action=choisirMarque">Les Marque</a></li>
            	<li><a href="index.php?uc=catalogue&action=voirOptions">Les Options</a></li>
            </ul>
            </li>
            <?php if($pdo->estConnecte()){ ?>
            <li><a href="index.php?uc=devis&action=consulterDevis">Mes Devis</a></li> <?php } if($pdo->estConnecte()==False){ ?>
            <li><a href="index.php?uc=inscription&action=demandeInscription">Inscription</a></li>
            <?php } $user = $pdo->getUserConnecte();
			if(is_array($user)){
				if ($pdo->estAdmin()){ ?>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Administration<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="index.php?uc=administration&action=consulterDevis">Les Devis</a></li>
                <li><a href="index.php?uc=administration&action=creerOption">Les Options</a></li>
              </ul>
            </li>
            <?php }} ?>
          </ul>
          <form class="navbar-form navbar-right" method="POST" action="index.php?uc=connexion&action=valideConnexion">
          <?php if(!$pdo->estConnecte()){ ?>
            <div class="form-group">
              <input type="text" id="login" name="login" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" id="mdp" name="mdp" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Connexion</button> <?php } else { ?>
            <input type="button" name="Deconnexon" value="Deconnexion" onclick="self.location.href='index.php?uc=connexion&action=deconnexion'" class="btn btn-primary">
            <?php } ?>
          </form>

          
        </div><!--/.nav-collapse -->
      </div>
    </nav>