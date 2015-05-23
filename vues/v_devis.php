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
      <h4>Vos devis</h4>
      <?php if ($nbDevis['nbdevis'] > 0){ ?>
      <h5>Vous avez <?php echo $nbDevis['nbdevis'] ?> devis.</h5>
    </caption>
    <tbody>
    <th> Référence</th>
    <th> Date</th>
    <th> Marque</th>
    <th> Modèle</th>
    <th> Prix TTC</th>
    <th> Etat Devis</th>
        <?php
        foreach($lesDevis as $unDevis)
        {
          $idDevis = $unDevis['idDevis'];
          $nomMarque = $unDevis['nomMarque'];
          $nomModele = $unDevis['nomModele'];
          $prixDevis = $unDevis['prixDevis'];
          $etatDevis = $unDevis['nomEtat'];
          $dateEn = $unDevis['dateDevis'];
          $dateFr = dateAnglaisVersFrancais($dateEn);
        ?>
        <tr>
          <td><?php echo $idDevis ?></td>
          <td><?php echo $dateFr ?></td>
          <td><?php echo $nomMarque ?></td>
          <td><?php echo $nomModele ?></td>
          <td><?php echo $prixDevis ?>€</td>
          <td><?php echo $etatDevis ?></td>
          <td> <input type="button" name="Aperçu" id="Aperçu" value="Aperçu" onclick="self.location.href='index.php?uc=devis&action=detailsDevis&id=<?php echo $idDevis ?>'" class="btn btn-primary"> 
          <?php
         }
          ?>
        </tr>
    </tbody>
  </table>
<?php } else { ?>
<h5>Vous n'avez actuellement aucun devis</h5>
<?php }} ?>
</div>
