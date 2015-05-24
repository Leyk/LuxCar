<div class="row">
<?php
if (isset($_REQUEST['info']))
{
  foreach($_REQUEST['info'] as $linfo)
  {
    echo '<h4 class="text-success">'.$linfo.'</h4>';
  }
}

if (isset($_REQUEST['erreurs']))
{
  foreach($_REQUEST['erreurs'] as $erreur)
  {
    echo '<h4 class="text-danger">'.$erreur.'</h4>';
  }
}
else{
  if(isset($crea)){
?>
<form method="post" action ="index.php?uc=devis&action=ajouterOption&dev=<?php echo $crea ?>"> <?php } ?>
<table class="table table-bordered table-striped table-condensed">
   <caption>
      <h4>Options (<?php echo count($lesOptions);?>)</h4>
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
          <?php if (isset ($crea)){ ?>
          <td> <input type="checkbox" name="cbxoption[]" value="<?php echo $idOption ?>"></td>
          <?php
         } }
          ?>
        </tr>
    </tbody>
</table>
<?php if (isset ($crea)){ ?>
<input type="submit" name="ValiderLesOptions" value="Valider les Options" class="btn btn-primary"> 
</form>
</br><input type="button" name="Annuler" value="Annuler" <?php if (isset($_REQUEST['dt'])){?> onclick="self.location.href='index.php?uc=administration&action=detailsDevis&id=<?php echo $crea ?>'"<?php } else{?> onclick="self.location.href='index.php'"<?php }?> class="btn btn-primary"> 
<?php }} ?>
</div>
