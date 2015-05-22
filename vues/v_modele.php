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
      <h4>Nos modèles disponibles</h4>
   </caption>
   <tbody>
        <?php
        foreach($lesModeles as $unModele)
        {
          $idModele = $unModele['idModele'];
          $nomModele = $unModele['nomModele'];
          $imgModele = $unModele['imgModele'];
          $prixModele = $unModele['prixModele'];
          $descrModele = $unModele['descriptionModele'];
        ?>
        <tr>
          <td><img src="<?php echo $imgModele ?>" alt="Image modele <?php echo $nomModele ?>"></td>
          <td><?php echo $nomModele ?></td>
          <td><?php echo $prixModele ?> €</td>
          <td><?php echo $descrModele ?></td>
          <td> <input type="button" name="Voir Options" value="Voir Options" onclick="self.location.href='index.php?uc=catalogue&action=voirOptions'" class="btn btn-primary"> 
          <td> <input type="button" name="Devis" value="Devis" onclick="self.location.href='index.php?uc=catalogue&action=creerDevis&mar=<?php echo $_REQUEST['mar'] ?>&mod=<?php echo $idModele ?>'" class="btn btn-primary"> 
          <?php
         }
          ?>
        </tr>
    </tbody>
</table>
<?php } ?>
</div>
