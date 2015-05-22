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
      <h4>Options compatibles</h4>
   </caption>
   <tbody>
        <?php
        foreach($lesOptions as $uneOption)
        {
          $idOption = $uneOption['idOption'];
          $nomOption = $uneOption['nomOption'];
          $descrOption = $uneOption['descriptionOption'];
          $prixOption = $uneOption['prixOption'];
        ?>
        <tr>
          <td><?php echo $nomOption ?></td>
          <td><?php echo $descrOption ?></td>
          <td><?php echo $prixOption ?>€</td>
          <td> <input type="button" name="Ajouter" id="Ajouter" value="Ajouter" onclick="self.location.href='index.php?uc=catalogue&action=choisirOptions&id=<?php echo $idOption ?>'" class="btn btn-primary"> 
          <?php
         }
          ?>
        </tr>
    </tbody>
    <button type="submit" class="btn btn-primary">Valider les Options</button>
</table>
<?php } ?>
</div>
