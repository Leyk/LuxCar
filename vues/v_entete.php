<!DOCTYPE html>
<html>
	<head>
		<!-- En-tête des pages -->
		<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
    <link href="styles/styles.css" rel="stylesheet"> <!-- à bouger -->
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
             if (isset($_COOKIE['idUser'])){
              echo " cool !";
             }
             else {
              echo " pas cool !";
             }
             ?>
        	    </div>
        	</div>
      	</header>