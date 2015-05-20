<div class="row">

<table class="table table-bordered table-striped table-condensed">
   <caption>
      <h4>Nos modèles disponibles</h4>
   </caption>
   <tbody>
        <?php
        foreach($lesModeles as $unModele)
        {
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
          <td> <input type="button" name="Devis" value="Devis" onclick="self.location.href='index.php?uc=catalogue&action=creerDevis'" class="btn btn-primary"> 
          <?php
         }
          ?>
        </tr>
    </tbody>
</table>
</div>
