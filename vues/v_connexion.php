<div class="row">
	<div class="col-md-12 col-md-offset-2">
<?php
if (isset($_REQUEST['erreurs']))
{
	foreach($_REQUEST['erreurs'] as $erreur)
	{
		echo '<h4 class="text-danger">'.$erreur.'</h4>';
	}
}
?>
		<form class="form-vertical" method="POST" action="index.php?uc=connexion&action=valideConnexion">
			<fieldset>
				<legend> Veuillez saisir vos identifiants : </legend>
				<div class="form-group">
					<label for="nom">Login (adresse mail)</label>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-4">
							<input class="form-control" id="login" type="text" name="login" size="30" maxlength="45" placeholder="Login" required>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="mdp">Mot de passe</label>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-4">
							<input class="form-control" id="mdp" type="password" name="mdp" size="30" maxlength="45" placeholder="Mot de passe" required>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Valider</button>
				<button type="reset" class="btn btn-primary">Annuler</button>
			</fieldset>
		</form>
	</div>
</div>