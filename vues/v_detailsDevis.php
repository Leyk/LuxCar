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
      <h4>Votre devis</h4>
      <h5>Vous ne pouvez pas modifier ce devis</h5>
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
  <?php 
  } ?>
</div>