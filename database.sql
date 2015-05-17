-- Base de données : 'LuxCar'

CREATE DATABASE LuxCar;
USE Luxcar;

-- Structure de la table 'Catégorie' (Visiteur ou Administrateur)

CREATE TABLE IF NOT EXISTS Categorie (
	idCategorie char(2) NOT NULL,
	nomCategorie varchar(20) NOT NULL,
	PRIMARY KEY (idCategorie)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Categorie'

INSERT INTO Categorie VALUES ("AD","Administrateur");
INSERT INTO Categorie VALUES ("CL","Client");

-- Structure de la table 'Inscrit'

CREATE TABLE IF NOT EXISTS Inscrit (
	idInscrit smallint(4) NOT NULL auto_increment,
	idCategorie char(2) NOT NULL,
	nomInscrit varchar(20) NOT NULL,
	prenomInscrit varchar(20) NOT NULL,
	mailInscrit varchar(50) NOT NULL,
	pswInscrit varchar(20) NOT NULL,
	token varchar(15),
	PRIMARY KEY (idInscrit),
	CONSTRAINT fk_inscrit_categorie FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
	 ) ENGINE=InnoDB CHARACTER SET latin1 auto_increment=1000;

-- Insertion de l'Administrateur de LuxCar dans la table 'Inscrit'

INSERT INTO Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) VALUES ("AD","Savornin","Simon","simon.savornin@polytech.univ-montp2.fr","admin");

-- Structure de la table 'Marque'

CREATE TABLE IF NOT EXISTS Marque(
	idMarque smallint(3) NOT NULL auto_increment,
	nomMarque varchar(20) NOT NULL,
	logoMarque varchar(50),
	PRIMARY KEY (idMarque)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Marque'

INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Aston Martin","images/logo/tn_logo_astonmartin.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Audi","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("BMW","images/logo/tn_logo_bmw.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Bugatti","images/logo/tn_logo_bugatti.png");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Ferrari","images/logo/tn_logo_ferrari.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Jaguar","images/logo/tn_logo_jaguar.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Lamborghini","images/logo/tn_logo_lamborghini.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Lexus","images/logo/tn_logo_lexus.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Maserati","images/logo/tn_logo_maserati.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Mercedes","images/logo/tn_logo_mercedes.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Porsche","images/logo/tn_logo_porsche.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("W Motors","images/logo/tn_logo_wmotors.jpeg");

-- Structure de la table 'Couleur'

CREATE TABLE IF NOT EXISTS Couleur(
	idCouleur smallint(2) NOT NULL auto_increment,
	nomCouleur varchar(10),
	imgCouleur varchar(50),
	PRIMARY KEY (idCouleur)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Couleur'

INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("noir", "images/couleur/noir.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("gris foncé", "images/couleur/gris_f.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("gris clair","images/couleur/gris_c.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("rouge", "images/couleur/rouge.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("orange", "images/couleur/orange.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("jaune","images/couleur/jaune.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("vert","images/couleur/vert.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("bleu clair","images/couleur/bleu_c.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("bleu foncé","images/couleur/bleu_f.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("violet","images/couleur/violet.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("rose","images/couleur/rose.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("marron","images/couleur/marron.jpg");
INSERT INTO Couleur (nomCouleur, imgCouleur) VALUES ("blanc","images/couleur/blanc.jpg");

-- Structure de la table 'Options'

CREATE TABLE IF NOT EXISTS Options(
	idOption smallint(4) NOT NULL auto_increment,
	nomOption varchar(50),
	descriptionOption varchar(200) DEFAULT " ",
	prixOption float(8,2),
	PRIMARY KEY (idOption)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Options'

INSERT INTO Options (nomOption, prixOption) VALUES ("Pack confort",1614.50);
INSERT INTO Options (nomOption, prixOption) VALUES ("Pack Business",2168.99);
INSERT INTO Options (nomOption, prixOption) VALUES ("Kit fumeur",60.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Finition carbone",3000.90);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Sieges chauffants","Grâce à ce système de sièges chauffants, vous ne passerez plus jamais l'hiver de la même façon dans votre berline",960.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Toit ouvrant",524.99);
INSERT INTO Options (nomOption, prixOption) VALUES ("Vitres teintées",960.99);
INSERT INTO Options (nomOption, prixOption) VALUES ("Volant en bois precieux",836.50);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Volant en or massif","Ce volant vous permettra d'avoir la classe absolue",50006.50);
INSERT INTO Options (nomOption, prixOption) VALUES ("Wifi Hotspot",840.90);
INSERT INTO Options (nomOption, prixOption) VALUES ("Alarme antivol",550.50);
INSERT INTO Options (nomOption, prixOption) VALUES ("Avertisseur d'angle mort",650.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Camera de recul",500.99);
INSERT INTO Options (nomOption, prixOption) VALUES ("Fonction TV",500.50);
INSERT INTO Options (nomOption, prixOption) VALUES ("Régulateur de vitesse",1790.99);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Systeme Hi-fi","Profitez d'un son UHD qui décoiffe",500.99);
INSERT INTO Options (nomOption, prixOption) VALUES ("Volant chauffant",275.90);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Station multimedia","Grâce à cette station multimédia, vos trajets vous paraîtront moins long malgré la limitation de vitesse",3140.00);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Pack Confort +","Ce pack confort optimum vous rappellera qui est le boss",9788.90);
INSERT INTO Options (nomOption, prixOption) VALUES ("Pack interieur bois",1644.50);
INSERT INTO Options (nomOption, prixOption) VALUES ("Jante 911 Turbo",1320.90);
INSERT INTO Options (nomOption, prixOption) VALUES ("Ventilation des sièges",1068.99);
INSERT INTO Options (nomOption, prixOption) VALUES ("Volant SportDesign",420.99);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Ecran côté passage","Cet écran peut être un bon moyen pour divertir votre co-pilote si celui-ci commence à vous ennuyer",324.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Phares antibrouillard arriere",500.90);
INSERT INTO Options (nomOption, prixOption) VALUES ("Plaque dedicacee",480.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Roue de secours",2640.00);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Camera de parking arriere","Pratique pour éviter que votre berline ne grignotte les murs lorsque vous vous garez", 2640.90);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Peinture anti-rayures","Grâce à cette superbe peinture anti-rayures, vous pourrez vous permettre de rentrer dans la clio d'à côté lors de vos créneaux",15292.90);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Siège passager éjectable","Si la compagnie de votre co-pilote devient un supplice, vous ne regretterez pas cette investissement", 26550.99);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Système Plaque Immatriculation Interchangeable","Grâce à votre deuxième plaque d'immatriculation cachée, fini les problèmes de radars", 18620.00);

-- Structure de la table 'Modèle'

CREATE TABLE IF NOT EXISTS Modele(
	idModele smallint(3) NOT NULL auto_increment,
	idMarque smallint(3) NOT NULL,
	nomModele varchar(20) NOT NULL,
	imgModele varchar(50),
	prixModele float(9,2) NOT NULL DEFAULT 0,
	descriptionModele varchar(100),
	nbDisponible int,
	PRIMARY KEY (idModele),
	CONSTRAINT fk_modele_marque FOREIGN KEY (idMarque) REFERENCES Marque(idMarque)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Modèle'

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"Vantage","images/modele/1_1.png",80000,15);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"DB9","images/modele/1_2.png",75000,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"Rapide S","images/modele/1_3.png",85000,9);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"Vanquish","images/modele/1_4.png",95000,5);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"A7","images/modele/2_1.png",55000,22);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"A8","images/modele/2_2.png",63000,21);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"TT","images/modele/2_3.png",75000,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"R8","images/modele/2_4.png",108000,9);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"RS","images/modele/2_5.png",95000,10);





-- Structure de la table 'Etat' (spécifie l'état d'un devis : A traiter (TR), validé (VA), annulé (AN),  informatif (IN))

CREATE TABLE IF NOT EXISTS Etat(
	idEtat char(2) NOT NULL,
	nomEtat varchar(15) NOT NULL,
	PRIMARY KEY (idEtat)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Etat'

INSERT INTO Etat VALUES ("TR","A traiter");
INSERT INTO Etat VALUES ("VA","Validé");
INSERT INTO Etat VALUES ("AN","Annulé");
INSERT INTO Etat VALUES ("IN","Informatif");

-- Structure de la table 'Devis' (qu'un client peut créer pour eventuellement passer commande)

CREATE TABLE IF NOT EXISTS Devis(
	idDevis smallint(4) NOT NULL auto_increment,
	idInscrit smallint(4) NOT NULL,
	idModele smallint(3) NOT NULL,
	idCouleur smallint(2),
	idEtat char(2) DEFAULT "IN",
	dateDevis date,
	prixDevis float(10,2),
	PRIMARY KEY (idDevis),
	CONSTRAINT fk_devis_inscrit FOREIGN KEY (idInscrit) REFERENCES Inscrit(idInscrit),
	CONSTRAINT fk_devis_modele FOREIGN KEY (idModele) REFERENCES Modele(idModele),
	CONSTRAINT fk_devis_couleur FOREIGN KEY (idCouleur) REFERENCES Couleur(idCouleur),
	CONSTRAINT fk_devis_etat FOREIGN KEY (idEtat) REFERENCES Etat(idEtat)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table LigneOption (qui contient les options que l'utilisateur a choisies pour son devis)

CREATE TABLE IF NOT EXISTS LigneOption(
	idDevis smallint(4) NOT NULL,
	idOption smallint(4) NOT NULL,
	PRIMARY KEY (idDevis, idOption),
	CONSTRAINT fk_ligneOption_devis FOREIGN KEY (idDevis) REFERENCES Devis(idDevis),
	CONSTRAINT fk_ligneOption_options FOREIGN KEY (idOption) REFERENCES 	Options(idOption)
	) ENGINE=InnoDB CHARACTER SET latin1;