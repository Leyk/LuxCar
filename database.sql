-- Base de données : 'LuxCar'

CREATE DATABASE LuxCar;
USE Luxcar;

-- Structure de la table 'Catégorie' (Visiteur ou Administrateur)

CREATE TABLE IF NOT EXISTS Categorie (
	idCategorie smallint(2) NOT NULL auto_increment,
	nomCategorie varchar(20) NOT NULL,
	PRIMARY KEY (idCategorie)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table 'Inscrit'

CREATE TABLE IF NOT EXISTS Inscrit (
	idInscrit smallint(4) NOT NULL auto_increment,
	idCategorie smallint(4) NOT NULL,
	nomInscrit varchar(20),
	prenomInscrit varchar(20),
	mailInscrit varchar(25) NOT NULL,
	pswInscrit varchar(20) NOT NULL,
	PRIMARY KEY (idInscrit),
	CONSTRAINT fk_inscrit_categorie FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
	 ) ENGINE=InnoDB CHARACTER SET latin1 auto_increment=1000;

-- Structure de la table 'Marque'

CREATE TABLE IF NOT EXISTS Marque(
	idMarque smallint(3) NOT NULL auto_increment,
	nomMarque varchar(20) NOT NULL,
	logoMarque varchar(50),
	PRIMARY KEY (idMarque)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table 'Couleur'

CREATE TABLE IF NOT EXISTS Couleur(
	idCouleur smallint(2) NOT NULL auto_increment,
	nomCouleur varchar(10),
	PRIMARY KEY (idCouleur)
	) ENGINE=InnoDB CHARACTER SET latin1;

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