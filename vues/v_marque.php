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
      <h4>Nos marques disponibles</h4>
   </caption>
   <tbody>
        <?php
        foreach($lesMarques as $uneMarque)
        {
          $idMarque = $uneMarque['idMarque'];
          $nomMarque = $uneMarque['nomMarque'];
          $logoMarque = $uneMarque['logoMarque'];
        ?>
        <tr>
          <td><a href="index.php?uc=catalogue&action=choisirModele&mar=<?php echo $idMarque ?>"><img src="<?php echo $logoMarque ?>" alt="Logo <?php echo $nomMarque ?>"></a></td>
          <td><?php echo $nomMarque ?></td>
          <?php
         }
          ?>
        </tr>
    </tbody>
</table>
<?php } ?>
</div>
