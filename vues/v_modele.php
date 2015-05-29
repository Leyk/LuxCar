<div class="row">
<?php
if(!$pdo->estConnecte()){
  echo "Vous devez vous inscrire ou vous connecter pour créer un devis";
}
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
        ?>
        <tr>
          <td><img src="<?php echo $imgModele ?>" alt="Image modele <?php echo $nomModele ?>"></td>
          <td><?php echo $nomModele ?></td>
          <td><?php echo $prixModele ?> €</td>
          <td> <input type="button" name="Devis" value="Devis" onclick="self.location.href='index.php?uc=devis&amp;action=creerDevis&amp;mar=<?php echo $_REQUEST['mar'] ?>&amp;mod=<?php echo $idModele ?>'" class="btn btn-primary" <?php if(!$pdo->estConnecte()){?> disabled <?php } ?>> 
          <?php
         }
          ?>
        </tr>
    </tbody>
</table>
<?php } ?>
</div>
