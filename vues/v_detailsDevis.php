<div class="row">
<?php
if (isset($_REQUEST['erreurs']))
{
  foreach($_REQUEST['erreurs'] as $erreur)
  {
    echo '<h4 class="text-danger">'.$erreur.'</h4>';
  }
}
else{
?>
  <table class="table table-bordered table-striped table-condensed">
    <caption>
    <?php if (!$pdo->estAdmin()) { ?>
      <h4>Votre devis</h4>
    <?php } else { ?>
    <h4>Devis client <?php echo $leDevis['nomInscrit']." ".$leDevis['prenomInscrit']." : ".$leDevis['mailInscrit']?></h4>
    <?php } ?>
    </caption>
    <tbody>
    <th> Référence</th>
    <th> Date</th>
    <th> Marque</th>
    <th> Modèle</th>
    <th> Prix TTC</th>
    <th> Etat Devis</th>
        <?php
        $idDevis = $leDevis['idDevis'];
        $nomInscr = $leDevis['nomInscrit'];
        $prenomInscr = $leDevis['prenomInscrit'];
        $logoMar = $leDevis['logoMarque'];
        $imgMod = $leDevis['imgModele'];
        $mailInscr = $leDevis['mailInscrit'];
        $nomMarque = $leDevis['nomMarque'];
        $nomModele = $leDevis['nomModele'];
        $prixDevis = $leDevis['prixDevis'];
        $etatDevis = $leDevis['nomEtat'];
        $dateEn = $leDevis['dateDevis'];
        $dateFr = dateAnglaisVersFrancais($dateEn);
        ?>
        <tr>
          <td><?php echo $idDevis ?></td>
          <td><?php echo $dateFr ?></td>
          <td><?php echo $nomMarque ?></td>
          <td><?php echo $nomModele ?></td>
          <td><?php echo $prixDevis ?>€</td>
          <td><?php echo $etatDevis ?></td>
        </tr>
    </tbody>
  </table> 
  <section class="row">
    <div class="col-lg-offset-2 col-xs-6 col-sm-3 col-md-2"><img src="<?php echo $logoMar ?>" alt="Image marque <?php echo $nomMarque;?>"></div>
    <div class="col-lg-offset-2 col-xs-6 col-sm-3 col-md-2"><img src="<?php echo $imgMod ?>" alt="Image modele <?php echo $nomModele;?>" ></div>
  </section>
  <?php if (!$pdo->estAdmin() and $leDevis['idEtat'] != "VA") { ?>
  </br><input type="button" name="Ajouter Options" value="Ajouter Options" onclick="self.location.href='index.php?uc=devis&amp;action=ajouterOption&amp;id=<?php echo $idDevis ?>&amp;dt=tr'" class="btn btn-primary"> 
  <?php } else {
   if ($leDevis['idEtat'] == "AT") { ?>
  </br><input type="button" name="Valider" value="Valider le Devis" onclick="self.location.href='index.php?uc=administration&amp;action=validerDevis&amp;id=<?php echo $idDevis ?>&amp;dt=tr'" class="btn btn-primary"> 
  <?php }}} ?>
</div>