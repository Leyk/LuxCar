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
}?>
<input type="button" name="Les Devis" value="Les Devis" onclick="self.location.href='index.php?uc=administration&action=consulterDevis'" class="btn btn-primary"> 
<input type="button" name="Les Options" value="Les Options" onclick="self.location.href='index.php?uc=administration&action=creerOption'" class="btn btn-primary"> 