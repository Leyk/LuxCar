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
      			<img src="images/luxcar_banner.jpeg" id="imgEntete" alt="Site LuxCar" />
      		</div>
      		<div class="row">
    			<div class="col-md-8">
        			<h1>Luxurious Cars</h1>
             <?php if ($pdo->estConnecte()){
              echo "Bonjour ".$_COOKIE['prenomUser'];
             }
             else {
              echo "Bonjour";
             }
             ?>
        	    </div>
        	</div>
      	</header>