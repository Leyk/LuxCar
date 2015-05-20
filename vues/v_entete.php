<?php 
setcookie('idUser', time() + 365*24*3600, null, null, false, true); // Cookie qui contiendra l'ID de l'utilisateur
setcookie('tokenUser', time() + 365*24*3600, null, null, false, true); // Cookie qui contiendra le token généré

?>

<!DOCTYPE html>
<html>
	<head>
		<!-- En-tête des pages -->
		<meta charset="utf-8"/>
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="styles/styles.css" rel="stylesheet">
		<title>Luxurious Cars</title>
	</head>
	<body>
    <div class="container">
    	<header class="row">
      		<div class="col-md-12">
      			<img src="images/luxcar_banner.png" id="imgEntete" alt="Site LuxCar" />
      		</div>
      		<div class="row">
    			<div class="col-md-8">
        			<h1>Luxurious Cars</h1>
              <?php
                if(isset($_COOKIE['idUser'])){
                  echo "bonjour ".$_COOKIE['idUser'];
                  } else { echo "non connecté";} ?>
        	    </div>
        	</div>
      	</header>