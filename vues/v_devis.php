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
    </caption>
    <tbody>
    <th> Numéro Devis</th>
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
          <?php
         }
          ?>
        </tr>
    </tbody>
  </table>
<?php } ?>
</div>
