-- Base de données : 'LuxCar'

CREATE DATABASE LuxCar;
USE Luxcar;

-- Structure de la table 'Catégorie' (Visiteur ou Administrateur)

CREATE TABLE IF NOT EXISTS Categorie (
	idCategorie char(2) NOT NULL,
	nomCategorie varchar(20) NOT NULL,
	PRIMARY KEY (idCategorie)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table 'Inscrit'

CREATE TABLE IF NOT EXISTS Inscrit (
	idInscrit smallint(4) NOT NULL auto_increment,
	idCategorie char(2) NOT NULL,
	nomInscrit varchar(20) NOT NULL,
	prenomInscrit varchar(20) NOT NULL,
	mailInscrit varchar(50) NOT NULL,
	pswInscrit varchar(100) NOT NULL,
	token varchar(100),
	PRIMARY KEY (idInscrit),
	CONSTRAINT fk_inscrit_categorie FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
	 ) ENGINE=InnoDB CHARACTER SET latin1 auto_increment=1200;

-- Structure de la table 'Marque'

CREATE TABLE IF NOT EXISTS Marque(
	idMarque smallint(3) NOT NULL auto_increment,
	nomMarque varchar(20) NOT NULL,
	logoMarque varchar(50),
	PRIMARY KEY (idMarque)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table 'Options'

CREATE TABLE IF NOT EXISTS Options(
	idOption smallint(4) NOT NULL auto_increment,
	nomOption varchar(50),
	descriptionOption varchar(200) DEFAULT " ",
	prixOption float(8,2),
	PRIMARY KEY (idOption)
	) ENGINE=InnoDB CHARACTER SET latin1 auto_increment=100;

-- Structure de la table 'Modèle'

CREATE TABLE IF NOT EXISTS Modele(
	idModele smallint(3) NOT NULL auto_increment,
	idMarque smallint(3) NOT NULL,
	nomModele varchar(30) NOT NULL,
	imgModele varchar(50),
	prixModele float(9,2) NOT NULL DEFAULT 0,
	nbDisponible int,
	PRIMARY KEY (idModele),
	CONSTRAINT fk_modele_marque FOREIGN KEY (idMarque) REFERENCES Marque(idMarque)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table 'Etat' (spécifie l'état d'un devis : En attente (AT), validé (VA), annulé (AN))

CREATE TABLE IF NOT EXISTS Etat(
	idEtat char(2) NOT NULL,
	nomEtat varchar(15) NOT NULL,
	PRIMARY KEY (idEtat)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Structure de la table 'Devis' (qu'un client peut créer pour eventuellement passer commande)

CREATE TABLE IF NOT EXISTS Devis(
	idDevis smallint(4) NOT NULL auto_increment,
	idInscrit smallint(4) NOT NULL,
	idMarque smallint(3) NOT NULL,
	idModele smallint(3) NOT NULL,
	idEtat char(2) DEFAULT "AT",
	dateDevis date,
	prixDevis float(10,2),
	PRIMARY KEY (idDevis),
	CONSTRAINT fk_devis_inscrit FOREIGN KEY (idInscrit) REFERENCES Inscrit(idInscrit),
	CONSTRAINT fk_devis_marque FOREIGN KEY (idMarque) REFERENCES Marque(idMarque),
	CONSTRAINT fk_devis_modele FOREIGN KEY (idModele) REFERENCES Modele(idModele),
	CONSTRAINT fk_devis_etat FOREIGN KEY (idEtat) REFERENCES Etat(idEtat)
	) ENGINE=InnoDB CHARACTER SET latin1 auto_increment=7777;

-- Structure de la table LigneOption (qui contient les options que l'utilisateur a choisies pour son devis)

CREATE TABLE IF NOT EXISTS LigneOption(
	idDevis smallint(4) NOT NULL,
	idOption smallint(4) NOT NULL,
	PRIMARY KEY (idDevis, idOption),
	CONSTRAINT fk_ligneOption_devis FOREIGN KEY (idDevis) REFERENCES Devis(idDevis) ON DELETE CASCADE,
	CONSTRAINT fk_ligneOption_options FOREIGN KEY (idOption) REFERENCES 	Options(idOption) ON DELETE CASCADE
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Trigger de Mise à jour du prix d'un Devis : Lorsqu'une option est ajoutée au devis : le prix est recalculé

delimiter //
CREATE TRIGGER maj_prix_devis
AFTER INSERT ON LigneOption FOR EACH ROW
BEGIN
	DECLARE v_prixOp float(8,2);
	SET @v_prixOp = (SELECT prixOption FROM Options WHERE idOption = NEW.idOption); 
	UPDATE Devis SET prixDevis = prixDevis + @v_prixOp WHERE idDevis = NEW.idDevis;
END;//
delimiter ;

/* Ce trigger sert à vérifier que les options sont à jours :
Lorsqu'une option est créée, on vérifie que le nom n'existe pas déjà en parcourant toutes les options existantes
Si elle existe déjà, on parcourt alors toutes les lignes d'options (des devis) qui la contiennent afin de remplacer l'id de l'option par celle qui vient d'être créée
En effet on considère que la seconde est une "mise à jour" de l'option déjà existante, devenue obsolète 
Dans le cas où le Devis est déjà en état "Validé", la modification n'est pas appliquée. C'est pour cela que l'on ne supprime pas de la base les 'anciennes' options */

delimiter //
CREATE TRIGGER check_exist_option_devis
AFTER INSERT ON Options FOR EACH ROW
BEGIN 
	DECLARE nomOpt varchar(50);   -- Prendra le nom de chacune des options présente dans la bd 
	DECLARE idOpt smallint(4); 		-- Prendra l'id de chacune des options présente dans la bd */
	DECLARE idLiOpt smallint(4);    -- Prendra l'id de chacune des options présente dans chacune des 'ligneOption' (correspondant à un devis) */
	DECLARE v_etat char(2);          -- Prendra l'état du devis pour vérifier si on modifie la ligne option ou pas
	DECLARE idDev smallint(4);       -- Prendra l'id du devis concerné par l'éventuelle modification de ligne option

	DECLARE done INTEGER DEFAULT FALSE;   -- Pour le curseur des options 
	DECLARE cursOpt CURSOR FOR SELECT idOption, nomOption FROM Options;  -- Curseur de parcours des options de la bd 
	DECLARE cursLigneOpt CURSOR FOR SELECT idOption, idDevis FROM ligneOption; 	-- Curseur de parcours des ligneOption 
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE ;

	OPEN cursOpt;
	cursOpt_loop: LOOP       -- Bouble sur le curseur des options 
		FETCH cursOpt INTO idOpt, nomOpt;   
		IF done THEN 
			LEAVE cursOpt_loop;  -- Fin de la boucle si plus d'options 
		END IF;

		BLOCK2:BEGIN
			DECLARE finished INTEGER DEFAULT FALSE;  -- Pour le curseur des ligneOption 
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = TRUE ;
			IF UPPER(REPLACE(New.nomOption,' ','')) = UPPER(REPLACE(nomOpt,' ','')) THEN   -- Comparaison de chacun des noms d'options existants avec le nouveau en création 
				OPEN cursLigneOpt;
				cursLigneOpt_loop: LOOP    -- Si correspondance, on boucle sur les ligneOption pour les modifier */
					FETCH cursLigneOpt INTO idLiOpt, idDev;
					IF finished THEN
						CLOSE cursLigneOpt;
						LEAVE cursLigneOpt_loop;   -- Fin de la boucle si plus de lignes 
					END IF;
					IF idLiOpt = idOpt THEN 
						SET @v_etat = (SELECT idEtat FROM Devis WHERE idDevis = idDev);   -- Vérification que le devis concerné par la ligne option n'est pas déjà validé
						IF @v_etat <> 'VA' THEN
							UPDATE ligneOption SET idOption = New.idOption WHERE idOption = idOpt AND idDevis = idDev;  -- Modification de l'id Option de la ligne si correspondance avec l'option modifiée et si Devis pas validé
						END IF;
					END IF;
				END LOOP;
			END IF ;
		END BLOCK2;
	END LOOP;
	CLOSE cursOpt;	
END;//
delimiter ;
