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

INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Aston Martin","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Audi","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("BMW","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Bugatti","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Ferrari","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Jaguar","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Lamborghini","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Lexus","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Maserati","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Mercedes","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Porsche","images/logo/tn_logo_audi.jpg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("W Motors","images/logo/tn_logo_audi.jpg");

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
	nomOption varchar(25),
	descriptionOption varchar(100),
	prixOption float(8,2),
	PRIMARY KEY (idOption)
	) ENGINE=InnoDB CHARACTER SET latin1;

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