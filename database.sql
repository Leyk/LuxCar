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
	pswInscrit varchar(100) NOT NULL,
	token varchar(100),
	PRIMARY KEY (idInscrit),
	CONSTRAINT fk_inscrit_categorie FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
	 ) ENGINE=InnoDB CHARACTER SET latin1 auto_increment=1000;

-- Insertion de l'Administrateur de LuxCar dans la table 'Inscrit'

INSERT INTO Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) VALUES ("AD","Savornin","Simon","simon.savornin@polytech.univ-montp2.fr",SHA1(CONCAT('LuxCar','admin','LuxCar')));

-- Insertion des clients inscrits dans 'Inscrit' (merci au générateur de données http://www.mockaroo.com)

insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lee', 'Annotés', 'rlee0@typepad.com', SHA1(CONCAT('LuxCar','AnnotésLee','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hicks', 'Hélène', 'shicks1@google.nl', SHA1(CONCAT('LuxCar','HélèneHicks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Porter', 'Mégane', 'aporter2@geocities.jp', SHA1(CONCAT('LuxCar','MéganePorter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Nguyen', 'Méng', 'snguyen3@multiply.com', SHA1(CONCAT('LuxCar','MéngNguyen','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reynolds', 'Åsa', 'rreynolds4@rambler.ru', SHA1(CONCAT('LuxCar','ÅsaReynolds','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Long', 'Naëlle', 'dlong5@flickr.com', SHA1(CONCAT('LuxCar','NaëlleLong','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Riley', 'Maëlys', 'criley6@bloglovin.com', SHA1(CONCAT('LuxCar','MaëlysRiley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Edwards', 'Vénus', 'dedwards7@shutterfly.com', SHA1(CONCAT('LuxCar','VénusEdwards','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Franklin', 'Mélys', 'lfranklin8@g.co', SHA1(CONCAT('LuxCar','MélysFranklin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Williamson', 'Gaëlle', 'mwilliamson9@163.com', SHA1(CONCAT('LuxCar','GaëlleWilliamson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Célia', 'cchapmana@goo.ne.jp', SHA1(CONCAT('LuxCar','CéliaChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hill', 'Anaëlle', 'thillb@java.com', SHA1(CONCAT('LuxCar','AnaëlleHill','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Vasquez', 'Néhémie', 'rvasquezc@timesonline.co.uk', SHA1(CONCAT('LuxCar','NéhémieVasquez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Anderson', 'Réjane', 'sandersond@dailymotion.com', SHA1(CONCAT('LuxCar','RéjaneAnderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Geneviève', 'schapmane@bloglines.com', SHA1(CONCAT('LuxCar','GenevièveChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stone', 'Almérinda', 'sstonef@engadget.com', SHA1(CONCAT('LuxCar','AlmérindaStone','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wells', 'Ruò', 'mwellsg@apache.org', SHA1(CONCAT('LuxCar','RuòWells','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hanson', 'Mélys', 'whansonh@nymag.com', SHA1(CONCAT('LuxCar','MélysHanson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'King', 'Méghane', 'skingi@aboutads.info', SHA1(CONCAT('LuxCar','MéghaneKing','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ortiz', 'Ruò', 'sortizj@nyu.edu', SHA1(CONCAT('LuxCar','RuòOrtiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fuller', 'Loïs', 'dfullerk@wisc.edu', SHA1(CONCAT('LuxCar','LoïsFuller','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rivera', 'Maëlyss', 'friveral@seesaa.net', SHA1(CONCAT('LuxCar','MaëlyssRivera','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Allen', 'Lorène', 'eallenm@nymag.com', SHA1(CONCAT('LuxCar','LorèneAllen','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wheeler', 'Géraldine', 'jwheelern@chicagotribune.com', SHA1(CONCAT('LuxCar','GéraldineWheeler','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Castillo', 'Mélys', 'ccastilloo@cmu.edu', SHA1(CONCAT('LuxCar','MélysCastillo','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gonzales', 'Renée', 'jgonzalesp@mlb.com', SHA1(CONCAT('LuxCar','RenéeGonzales','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wright', 'Fèi', 'rwrightq@house.gov', SHA1(CONCAT('LuxCar','FèiWright','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henry', 'Mélina', 'phenryr@craigslist.org', SHA1(CONCAT('LuxCar','MélinaHenry','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ryan', 'Liè', 'cryans@dailymail.co.uk', SHA1(CONCAT('LuxCar','LièRyan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Snyder', 'Thérèsa', 'msnydert@simplemachines.org', SHA1(CONCAT('LuxCar','ThérèsaSnyder','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hernandez', 'Annotée', 'ahernandezu@senate.gov', SHA1(CONCAT('LuxCar','AnnotéeHernandez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gomez', 'Bérengère', 'dgomezv@stumbleupon.com', SHA1(CONCAT('LuxCar','BérengèreGomez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Woods', 'Rébecca', 'dwoodsw@senate.gov', SHA1(CONCAT('LuxCar','RébeccaWoods','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Peters', 'Marie-ève', 'wpetersx@uol.com.br', SHA1(CONCAT('LuxCar','Marie-èvePeters','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gardner', 'Athéna', 'ggardnery@biglobe.ne.jp', SHA1(CONCAT('LuxCar','AthénaGardner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wheeler', 'Thérèse', 'jwheelerz@ucoz.com', SHA1(CONCAT('LuxCar','ThérèseWheeler','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reynolds', 'Maïwenn', 'breynolds10@twitter.com', SHA1(CONCAT('LuxCar','MaïwennReynolds','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fields', 'Réjane', 'jfields11@wunderground.com', SHA1(CONCAT('LuxCar','RéjaneFields','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Vasquez', 'Léonore', 'dvasquez12@amazon.co.uk', SHA1(CONCAT('LuxCar','LéonoreVasquez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gardner', 'Camélia', 'tgardner13@apple.com', SHA1(CONCAT('LuxCar','CaméliaGardner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mccoy', 'Léa', 'vmccoy14@wikia.com', SHA1(CONCAT('LuxCar','LéaMccoy','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watkins', 'Börje', 'jwatkins15@ebay.co.uk', SHA1(CONCAT('LuxCar','BörjeWatkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moore', 'Loïs', 'rmoore16@ezinearticles.com', SHA1(CONCAT('LuxCar','LoïsMoore','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Harris', 'Judicaël', 'lharris17@flavors.me', SHA1(CONCAT('LuxCar','JudicaëlHarris','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gonzalez', 'Cléopatre', 'mgonzalez18@homestead.com', SHA1(CONCAT('LuxCar','CléopatreGonzalez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'West', 'Gaëlle', 'vwest19@moonfruit.com', SHA1(CONCAT('LuxCar','GaëlleWest','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lee', 'Loïc', 'mlee1a@senate.gov', SHA1(CONCAT('LuxCar','LoïcLee','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hanson', 'Maëly', 'ehanson1b@homestead.com', SHA1(CONCAT('LuxCar','MaëlyHanson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Adams', 'Marie-ève', 'gadams1c@deliciousdays.com', SHA1(CONCAT('LuxCar','Marie-èveAdams','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wood', 'Anaël', 'rwood1d@wp.com', SHA1(CONCAT('LuxCar','AnaëlWood','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richardson', 'Marie-thérèse', 'brichardson1e@ifeng.com', SHA1(CONCAT('LuxCar','Marie-thérèseRichardson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Medina', 'Örjan', 'gmedina1f@mlb.com', SHA1(CONCAT('LuxCar','ÖrjanMedina','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Pierce', 'Rébecca', 'kpierce1g@boston.com', SHA1(CONCAT('LuxCar','RébeccaPierce','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sanders', 'Tán', 'ssanders1h@zimbio.com', SHA1(CONCAT('LuxCar','TánSanders','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sims', 'Erwéi', 'csims1i@foxnews.com', SHA1(CONCAT('LuxCar','ErwéiSims','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Perkins', 'Athéna', 'jperkins1j@google.cn', SHA1(CONCAT('LuxCar','AthénaPerkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lee', 'Maëly', 'elee1k@123-reg.co.uk', SHA1(CONCAT('LuxCar','MaëlyLee','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Davis', 'Adèle', 'sdavis1l@goo.gl', SHA1(CONCAT('LuxCar','AdèleDavis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richardson', 'Annotée', 'crichardson1m@va.gov', SHA1(CONCAT('LuxCar','AnnotéeRichardson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Franklin', 'Michèle', 'wfranklin1n@java.com', SHA1(CONCAT('LuxCar','MichèleFranklin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'George', 'Lyséa', 'rgeorge1o@cnbc.com', SHA1(CONCAT('LuxCar','LyséaGeorge','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carpenter', 'Måns', 'ecarpenter1p@howstuffworks.com', SHA1(CONCAT('LuxCar','MånsCarpenter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'George', 'Lauréna', 'ggeorge1q@blinklist.com', SHA1(CONCAT('LuxCar','LaurénaGeorge','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawson', 'Edmée', 'klawson1r@wsj.com', SHA1(CONCAT('LuxCar','EdméeLawson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Willis', 'Naëlle', 'rwillis1s@unicef.org', SHA1(CONCAT('LuxCar','NaëlleWillis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Clark', 'Estée', 'fclark1t@google.com', SHA1(CONCAT('LuxCar','EstéeClark','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Ruì', 'jchapman1u@ucoz.ru', SHA1(CONCAT('LuxCar','RuìChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Black', 'Bérénice', 'mblack1v@addthis.com', SHA1(CONCAT('LuxCar','BéréniceBlack','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ward', 'Méryl', 'rward1w@cdbaby.com', SHA1(CONCAT('LuxCar','MérylWard','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hansen', 'Méghane', 'mhansen1x@rediff.com', SHA1(CONCAT('LuxCar','MéghaneHansen','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bowman', 'Danièle', 'fbowman1y@ifeng.com', SHA1(CONCAT('LuxCar','DanièleBowman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henderson', 'Vénus', 'whenderson1z@multiply.com', SHA1(CONCAT('LuxCar','VénusHenderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Diaz', 'Renée', 'rdiaz20@tamu.edu', SHA1(CONCAT('LuxCar','RenéeDiaz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hawkins', 'Lèi', 'jhawkins21@techcrunch.com', SHA1(CONCAT('LuxCar','LèiHawkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Magdalène', 'kchapman22@yolasite.com', SHA1(CONCAT('LuxCar','MagdalèneChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bryant', 'Andréanne', 'nbryant23@slashdot.org', SHA1(CONCAT('LuxCar','AndréanneBryant','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ramos', 'Liè', 'cramos24@oracle.com', SHA1(CONCAT('LuxCar','LièRamos','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Tucker', 'Noémie', 'stucker25@prnewswire.com', SHA1(CONCAT('LuxCar','NoémieTucker','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watkins', 'Audréanne', 'gwatkins26@umn.edu', SHA1(CONCAT('LuxCar','AudréanneWatkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Austin', 'Noëlla', 'haustin27@imageshack.us', SHA1(CONCAT('LuxCar','NoëllaAustin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Cole', 'Sélène', 'ecole28@list-manage.com', SHA1(CONCAT('LuxCar','SélèneCole','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sims', 'Léone', 'gsims29@upenn.edu', SHA1(CONCAT('LuxCar','LéoneSims','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Larson', 'Pål', 'llarson2a@last.fm', SHA1(CONCAT('LuxCar','PålLarson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fernandez', 'Uò', 'rfernandez2b@newsvine.com', SHA1(CONCAT('LuxCar','UòFernandez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Smith', 'Yénora', 'jsmith2c@mapy.cz', SHA1(CONCAT('LuxCar','YénoraSmith','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Murray', 'Lyséa', 'rmurray2d@craigslist.org', SHA1(CONCAT('LuxCar','LyséaMurray','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mills', 'Yáo', 'lmills2e@reference.com', SHA1(CONCAT('LuxCar','YáoMills','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fields', 'Léandre', 'cfields2f@weebly.com', SHA1(CONCAT('LuxCar','LéandreFields','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Evans', 'Marylène', 'tevans2g@opera.com', SHA1(CONCAT('LuxCar','MarylèneEvans','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Grant', 'Eléonore', 'lgrant2h@google.de', SHA1(CONCAT('LuxCar','EléonoreGrant','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Barnes', 'Mén', 'hbarnes2i@prnewswire.com', SHA1(CONCAT('LuxCar','MénBarnes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Howell', 'Méghane', 'bhowell2j@businesswire.com', SHA1(CONCAT('LuxCar','MéghaneHowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Eléa', 'ksullivan2k@tripadvisor.com', SHA1(CONCAT('LuxCar','EléaSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Montgomery', 'Solène', 'cmontgomery2l@yellowpages.com', SHA1(CONCAT('LuxCar','SolèneMontgomery','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ortiz', 'Kévina', 'mortiz2m@scientificamerican.com', SHA1(CONCAT('LuxCar','KévinaOrtiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'George', 'Görel', 'sgeorge2n@wisc.edu', SHA1(CONCAT('LuxCar','GörelGeorge','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ryan', 'Solène', 'jryan2o@nature.com', SHA1(CONCAT('LuxCar','SolèneRyan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawson', 'Maëlann', 'alawson2p@cbc.ca', SHA1(CONCAT('LuxCar','MaëlannLawson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Webb', 'Intéressant', 'swebb2q@un.org', SHA1(CONCAT('LuxCar','IntéressantWebb','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Nelson', 'Garçon', 'gnelson2r@state.gov', SHA1(CONCAT('LuxCar','GarçonNelson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Griffin', 'Simplifiés', 'mgriffin2s@indiatimes.com', SHA1(CONCAT('LuxCar','SimplifiésGriffin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Black', 'Maïté', 'ablack2t@facebook.com', SHA1(CONCAT('LuxCar','MaïtéBlack','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mccoy', 'Irène', 'cmccoy2u@tripadvisor.com', SHA1(CONCAT('LuxCar','IrèneMccoy','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sims', 'Marlène', 'msims2v@shop-pro.jp', SHA1(CONCAT('LuxCar','MarlèneSims','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Coleman', 'Gaëlle', 'vcoleman2w@purevolume.com', SHA1(CONCAT('LuxCar','GaëlleColeman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Duncan', 'Noémie', 'sduncan2x@sourceforge.net', SHA1(CONCAT('LuxCar','NoémieDuncan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mason', 'Chloé', 'jmason2y@squidoo.com', SHA1(CONCAT('LuxCar','ChloéMason','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Turner', 'Yénora', 'kturner2z@liveinternet.ru', SHA1(CONCAT('LuxCar','YénoraTurner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hamilton', 'Vérane', 'lhamilton30@flavors.me', SHA1(CONCAT('LuxCar','VéraneHamilton','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gibson', 'Yóu', 'jgibson31@state.tx.us', SHA1(CONCAT('LuxCar','YóuGibson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'George', 'Inès', 'mgeorge32@census.gov', SHA1(CONCAT('LuxCar','InèsGeorge','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richardson', 'Tú', 'arichardson33@booking.com', SHA1(CONCAT('LuxCar','TúRichardson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Jordan', 'Zoé', 'jjordan34@webeden.co.uk', SHA1(CONCAT('LuxCar','ZoéJordan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Nguyen', 'Maëlys', 'dnguyen35@usda.gov', SHA1(CONCAT('LuxCar','MaëlysNguyen','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reed', 'Marie-françoise', 'lreed36@nymag.com', SHA1(CONCAT('LuxCar','Marie-françoiseReed','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fox', 'Frédérique', 'jfox37@blogspot.com', SHA1(CONCAT('LuxCar','FrédériqueFox','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reyes', 'Adélaïde', 'kreyes38@rakuten.co.jp', SHA1(CONCAT('LuxCar','AdélaïdeReyes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bishop', 'Crééz', 'gbishop39@google.ru', SHA1(CONCAT('LuxCar','CréézBishop','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fisher', 'Andréa', 'rfisher3a@dmoz.org', SHA1(CONCAT('LuxCar','AndréaFisher','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hawkins', 'Cécile', 'chawkins3b@rediff.com', SHA1(CONCAT('LuxCar','CécileHawkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Dà', 'csullivan3c@tumblr.com', SHA1(CONCAT('LuxCar','DàSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Snyder', 'Estève', 'fsnyder3d@google.com.hk', SHA1(CONCAT('LuxCar','EstèveSnyder','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kelly', 'Mélia', 'pkelly3e@home.pl', SHA1(CONCAT('LuxCar','MéliaKelly','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sanders', 'Garçon', 'ssanders3f@google.cn', SHA1(CONCAT('LuxCar','GarçonSanders','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Banks', 'Valérie', 'wbanks3g@drupal.org', SHA1(CONCAT('LuxCar','ValérieBanks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Robertson', 'Françoise', 'jrobertson3h@gizmodo.com', SHA1(CONCAT('LuxCar','FrançoiseRobertson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Parker', 'Adèle', 'mparker3i@miitbeian.gov.cn', SHA1(CONCAT('LuxCar','AdèleParker','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Alexander', 'Cunégonde', 'calexander3j@youtube.com', SHA1(CONCAT('LuxCar','CunégondeAlexander','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Morris', 'Tán', 'gmorris3k@feedburner.com', SHA1(CONCAT('LuxCar','TánMorris','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Garcia', 'Bécassine', 'kgarcia3l@surveymonkey.com', SHA1(CONCAT('LuxCar','BécassineGarcia','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hughes', 'Marie-thérèse', 'mhughes3m@sourceforge.net', SHA1(CONCAT('LuxCar','Marie-thérèseHughes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Torres', 'Åslög', 'atorres3n@webs.com', SHA1(CONCAT('LuxCar','ÅslögTorres','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mccoy', 'Lén', 'imccoy3o@fastcompany.com', SHA1(CONCAT('LuxCar','LénMccoy','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gonzales', 'Personnalisée', 'sgonzales3p@domainmarket.com', SHA1(CONCAT('LuxCar','PersonnaliséeGonzales','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Powell', 'Réservés', 'hpowell3q@upenn.edu', SHA1(CONCAT('LuxCar','RéservésPowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gonzales', 'Bécassine', 'bgonzales3r@nba.com', SHA1(CONCAT('LuxCar','BécassineGonzales','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Willis', 'Lèi', 'rwillis3s@walmart.com', SHA1(CONCAT('LuxCar','LèiWillis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Castillo', 'Marie-hélène', 'tcastillo3t@google.ca', SHA1(CONCAT('LuxCar','Marie-hélèneCastillo','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sanders', 'Adélie', 'jsanders3u@cargocollective.com', SHA1(CONCAT('LuxCar','AdélieSanders','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richardson', 'Célia', 'krichardson3v@umn.edu', SHA1(CONCAT('LuxCar','CéliaRichardson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ross', 'Clélia', 'sross3w@zimbio.com', SHA1(CONCAT('LuxCar','CléliaRoss','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'James', 'Pò', 'jjames3x@quantcast.com', SHA1(CONCAT('LuxCar','PòJames','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Martinez', 'Märta', 'cmartinez3y@plala.or.jp', SHA1(CONCAT('LuxCar','MärtaMartinez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ferguson', 'Cloé', 'sferguson3z@ow.ly', SHA1(CONCAT('LuxCar','CloéFerguson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Williams', 'Maëline', 'lwilliams40@alibaba.com', SHA1(CONCAT('LuxCar','MaëlineWilliams','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gilbert', 'Réjane', 'sgilbert41@seesaa.net', SHA1(CONCAT('LuxCar','RéjaneGilbert','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Warren', 'Zhì', 'dwarren42@pen.io', SHA1(CONCAT('LuxCar','ZhìWarren','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reid', 'Simplifiés', 'mreid43@123-reg.co.uk', SHA1(CONCAT('LuxCar','SimplifiésReid','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sanchez', 'Jú', 'psanchez44@icio.us', SHA1(CONCAT('LuxCar','JúSanchez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Long', 'Angélique', 'along45@mail.ru', SHA1(CONCAT('LuxCar','AngéliqueLong','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Adams', 'Cléopatre', 'badams46@cbslocal.com', SHA1(CONCAT('LuxCar','CléopatreAdams','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hart', 'Anaël', 'mhart47@smugmug.com', SHA1(CONCAT('LuxCar','AnaëlHart','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Dean', 'Mén', 'tdean48@t.co', SHA1(CONCAT('LuxCar','MénDean','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Long', 'Judicaël', 'jlong49@photobucket.com', SHA1(CONCAT('LuxCar','JudicaëlLong','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Dixon', 'Estève', 'jdixon4a@mapquest.com', SHA1(CONCAT('LuxCar','EstèveDixon','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Collins', 'Crééz', 'hcollins4b@linkedin.com', SHA1(CONCAT('LuxCar','CréézCollins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Burns', 'Vérane', 'jburns4c@europa.eu', SHA1(CONCAT('LuxCar','VéraneBurns','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stone', 'Mélissandre', 'wstone4d@wix.com', SHA1(CONCAT('LuxCar','MélissandreStone','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watson', 'Táng', 'cwatson4e@amazon.de', SHA1(CONCAT('LuxCar','TángWatson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Foster', 'Cécilia', 'jfoster4f@paginegialle.it', SHA1(CONCAT('LuxCar','CéciliaFoster','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stevens', 'Garçon', 'istevens4g@wp.com', SHA1(CONCAT('LuxCar','GarçonStevens','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Matthews', 'Béatrice', 'tmatthews4h@addthis.com', SHA1(CONCAT('LuxCar','BéatriceMatthews','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gilbert', 'Pål', 'mgilbert4i@nature.com', SHA1(CONCAT('LuxCar','PålGilbert','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Griffin', 'Naéva', 'agriffin4j@homestead.com', SHA1(CONCAT('LuxCar','NaévaGriffin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Tucker', 'Aí', 'dtucker4k@dailymail.co.uk', SHA1(CONCAT('LuxCar','AíTucker','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Flores', 'Kévina', 'lflores4l@indiatimes.com', SHA1(CONCAT('LuxCar','KévinaFlores','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fisher', 'Irène', 'afisher4m@altervista.org', SHA1(CONCAT('LuxCar','IrèneFisher','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Robinson', 'Eugénie', 'hrobinson4n@shinystat.com', SHA1(CONCAT('LuxCar','EugénieRobinson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moreno', 'Naëlle', 'pmoreno4o@hibu.com', SHA1(CONCAT('LuxCar','NaëlleMoreno','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Williamson', 'Maïlis', 'ewilliamson4p@about.com', SHA1(CONCAT('LuxCar','MaïlisWilliamson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Pierce', 'Bécassine', 'kpierce4q@51.la', SHA1(CONCAT('LuxCar','BécassinePierce','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rose', 'Maéna', 'drose4r@huffingtonpost.com', SHA1(CONCAT('LuxCar','MaénaRose','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fisher', 'Yáo', 'afisher4s@baidu.com', SHA1(CONCAT('LuxCar','YáoFisher','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Phillips', 'Marie-hélène', 'sphillips4t@dedecms.com', SHA1(CONCAT('LuxCar','Marie-hélènePhillips','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kennedy', 'Estève', 'rkennedy4u@mail.ru', SHA1(CONCAT('LuxCar','EstèveKennedy','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'James', 'Liè', 'sjames4v@technorati.com', SHA1(CONCAT('LuxCar','LièJames','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ruiz', 'Alizée', 'jruiz4w@sbwire.com', SHA1(CONCAT('LuxCar','AlizéeRuiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Burton', 'Gaïa', 'sburton4x@go.com', SHA1(CONCAT('LuxCar','GaïaBurton','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fox', 'Camélia', 'kfox4y@theguardian.com', SHA1(CONCAT('LuxCar','CaméliaFox','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bryant', 'Océanne', 'abryant4z@ed.gov', SHA1(CONCAT('LuxCar','OcéanneBryant','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Price', 'Dafnée', 'wprice50@google.cn', SHA1(CONCAT('LuxCar','DafnéePrice','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Brown', 'Desirée', 'jbrown51@apple.com', SHA1(CONCAT('LuxCar','DesiréeBrown','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reyes', 'Béatrice', 'areyes52@pagesperso-orange.fr', SHA1(CONCAT('LuxCar','BéatriceReyes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bell', 'Audréanne', 'jbell53@cpanel.net', SHA1(CONCAT('LuxCar','AudréanneBell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Porter', 'Bérénice', 'fporter54@altervista.org', SHA1(CONCAT('LuxCar','BérénicePorter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Russell', 'Aimée', 'mrussell55@washingtonpost.com', SHA1(CONCAT('LuxCar','AiméeRussell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hughes', 'Adélaïde', 'bhughes56@goodreads.com', SHA1(CONCAT('LuxCar','AdélaïdeHughes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gibson', 'Göran', 'mgibson57@histats.com', SHA1(CONCAT('LuxCar','GöranGibson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Perez', 'Nuó', 'cperez58@macromedia.com', SHA1(CONCAT('LuxCar','NuóPerez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Riley', 'Mylène', 'jriley59@discovery.com', SHA1(CONCAT('LuxCar','MylèneRiley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Jordan', 'Yáo', 'cjordan5a@ftc.gov', SHA1(CONCAT('LuxCar','YáoJordan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Boyd', 'Aimée', 'kboyd5b@salon.com', SHA1(CONCAT('LuxCar','AiméeBoyd','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hawkins', 'Béatrice', 'mhawkins5c@arstechnica.com', SHA1(CONCAT('LuxCar','BéatriceHawkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kelly', 'Geneviève', 'jkelly5d@zdnet.com', SHA1(CONCAT('LuxCar','GenevièveKelly','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Olson', 'Stévina', 'polson5e@yellowpages.com', SHA1(CONCAT('LuxCar','StévinaOlson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gonzales', 'Gaétane', 'agonzales5f@plala.or.jp', SHA1(CONCAT('LuxCar','GaétaneGonzales','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bryant', 'Sòng', 'jbryant5g@parallels.com', SHA1(CONCAT('LuxCar','SòngBryant','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Daniels', 'Gérald', 'ddaniels5h@barnesandnoble.com', SHA1(CONCAT('LuxCar','GéraldDaniels','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carpenter', 'Edmée', 'rcarpenter5i@jalbum.net', SHA1(CONCAT('LuxCar','EdméeCarpenter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bradley', 'Zoé', 'jbradley5j@ow.ly', SHA1(CONCAT('LuxCar','ZoéBradley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Davis', 'Maéna', 'rdavis5k@cbsnews.com', SHA1(CONCAT('LuxCar','MaénaDavis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Holmes', 'Hélène', 'hholmes5l@wordpress.org', SHA1(CONCAT('LuxCar','HélèneHolmes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moreno', 'Cécilia', 'dmoreno5m@dropbox.com', SHA1(CONCAT('LuxCar','CéciliaMoreno','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bradley', 'Mylène', 'bbradley5n@barnesandnoble.com', SHA1(CONCAT('LuxCar','MylèneBradley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Little', 'Clémentine', 'jlittle5o@whitehouse.gov', SHA1(CONCAT('LuxCar','ClémentineLittle','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gonzales', 'Maïlys', 'jgonzales5p@hexun.com', SHA1(CONCAT('LuxCar','MaïlysGonzales','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lopez', 'Daphnée', 'llopez5q@tuttocitta.it', SHA1(CONCAT('LuxCar','DaphnéeLopez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hayes', 'Naëlle', 'vhayes5r@wsj.com', SHA1(CONCAT('LuxCar','NaëlleHayes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moreno', 'Sòng', 'kmoreno5s@hexun.com', SHA1(CONCAT('LuxCar','SòngMoreno','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawrence', 'Anaël', 'hlawrence5t@sun.com', SHA1(CONCAT('LuxCar','AnaëlLawrence','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Weaver', 'Maéna', 'aweaver5u@chron.com', SHA1(CONCAT('LuxCar','MaénaWeaver','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Turner', 'Ruì', 'pturner5v@bing.com', SHA1(CONCAT('LuxCar','RuìTurner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Patterson', 'Stévina', 'rpatterson5w@dyndns.org', SHA1(CONCAT('LuxCar','StévinaPatterson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wallace', 'Gwenaëlle', 'bwallace5x@taobao.com', SHA1(CONCAT('LuxCar','GwenaëlleWallace','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'White', 'Maëline', 'twhite5y@ucsd.edu', SHA1(CONCAT('LuxCar','MaëlineWhite','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Washington', 'Andréanne', 'mwashington5z@themeforest.net', SHA1(CONCAT('LuxCar','AndréanneWashington','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bailey', 'Véronique', 'cbailey60@globo.com', SHA1(CONCAT('LuxCar','VéroniqueBailey','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mitchell', 'Yú', 'cmitchell61@dagondesign.com', SHA1(CONCAT('LuxCar','YúMitchell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gibson', 'Audréanne', 'mgibson62@amazon.de', SHA1(CONCAT('LuxCar','AudréanneGibson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Cunningham', 'Léonie', 'rcunningham63@apache.org', SHA1(CONCAT('LuxCar','LéonieCunningham','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Porter', 'Naéva', 'jporter64@google.nl', SHA1(CONCAT('LuxCar','NaévaPorter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Price', 'Tán', 'tprice65@china.com.cn', SHA1(CONCAT('LuxCar','TánPrice','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Warren', 'Yóu', 'awarren66@webs.com', SHA1(CONCAT('LuxCar','YóuWarren','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Banks', 'Loïca', 'bbanks67@youku.com', SHA1(CONCAT('LuxCar','LoïcaBanks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Campbell', 'Agnès', 'fcampbell68@google.ca', SHA1(CONCAT('LuxCar','AgnèsCampbell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'George', 'Geneviève', 'dgeorge69@home.pl', SHA1(CONCAT('LuxCar','GenevièveGeorge','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gutierrez', 'Marylène', 'egutierrez6a@craigslist.org', SHA1(CONCAT('LuxCar','MarylèneGutierrez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Myers', 'Yáo', 'dmyers6b@unesco.org', SHA1(CONCAT('LuxCar','YáoMyers','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gutierrez', 'Léandre', 'rgutierrez6c@skyrock.com', SHA1(CONCAT('LuxCar','LéandreGutierrez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Reed', 'Marie-ève', 'mreed6d@hud.gov', SHA1(CONCAT('LuxCar','Marie-èveReed','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Welch', 'Inès', 'awelch6e@princeton.edu', SHA1(CONCAT('LuxCar','InèsWelch','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Morrison', 'Åslög', 'jmorrison6f@kickstarter.com', SHA1(CONCAT('LuxCar','ÅslögMorrison','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Elliott', 'Joséphine', 'relliott6g@nationalgeographic.com', SHA1(CONCAT('LuxCar','JoséphineElliott','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Larson', 'Illustrée', 'jlarson6h@cbslocal.com', SHA1(CONCAT('LuxCar','IllustréeLarson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Miller', 'Michèle', 'dmiller6i@biblegateway.com', SHA1(CONCAT('LuxCar','MichèleMiller','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Shaw', 'Miléna', 'jshaw6j@people.com.cn', SHA1(CONCAT('LuxCar','MilénaShaw','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ross', 'Publicité', 'sross6k@fotki.com', SHA1(CONCAT('LuxCar','PublicitéRoss','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Boyd', 'Cléa', 'cboyd6l@biblegateway.com', SHA1(CONCAT('LuxCar','CléaBoyd','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Garza', 'Anaëlle', 'sgarza6m@pagesperso-orange.fr', SHA1(CONCAT('LuxCar','AnaëlleGarza','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Dunn', 'Bérénice', 'jdunn6n@icq.com', SHA1(CONCAT('LuxCar','BéréniceDunn','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Barnes', 'Naëlle', 'mbarnes6o@gnu.org', SHA1(CONCAT('LuxCar','NaëlleBarnes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Harrison', 'Åke', 'nharrison6p@trellian.com', SHA1(CONCAT('LuxCar','ÅkeHarrison','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Nichols', 'Mélodie', 'inichols6q@home.pl', SHA1(CONCAT('LuxCar','MélodieNichols','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Thompson', 'Ruò', 'fthompson6r@sitemeter.com', SHA1(CONCAT('LuxCar','RuòThompson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Diaz', 'Edmée', 'mdiaz6s@newyorker.com', SHA1(CONCAT('LuxCar','EdméeDiaz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gray', 'Yénora', 'pgray6t@businessweek.com', SHA1(CONCAT('LuxCar','YénoraGray','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Perry', 'Esbjörn', 'jperry6u@youtube.com', SHA1(CONCAT('LuxCar','EsbjörnPerry','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rodriguez', 'Fèi', 'jrodriguez6v@guardian.co.uk', SHA1(CONCAT('LuxCar','FèiRodriguez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Davis', 'Sòng', 'ndavis6w@goo.ne.jp', SHA1(CONCAT('LuxCar','SòngDavis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Harrison', 'Kuí', 'jharrison6x@telegraph.co.uk', SHA1(CONCAT('LuxCar','KuíHarrison','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lee', 'Cécilia', 'alee6y@ca.gov', SHA1(CONCAT('LuxCar','CéciliaLee','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Day', 'Béatrice', 'aday6z@canalblog.com', SHA1(CONCAT('LuxCar','BéatriceDay','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hanson', 'Naéva', 'ahanson70@blogspot.com', SHA1(CONCAT('LuxCar','NaévaHanson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Nichols', 'Joséphine', 'anichols71@java.com', SHA1(CONCAT('LuxCar','JoséphineNichols','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Barnes', 'Célia', 'tbarnes72@usnews.com', SHA1(CONCAT('LuxCar','CéliaBarnes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawrence', 'Méghane', 'klawrence73@columbia.edu', SHA1(CONCAT('LuxCar','MéghaneLawrence','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hawkins', 'Cloé', 'ahawkins74@reference.com', SHA1(CONCAT('LuxCar','CloéHawkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Torres', 'Daphnée', 'ctorres75@house.gov', SHA1(CONCAT('LuxCar','DaphnéeTorres','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Black', 'Néhémie', 'tblack76@storify.com', SHA1(CONCAT('LuxCar','NéhémieBlack','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kelly', 'Maëlle', 'jkelly77@people.com.cn', SHA1(CONCAT('LuxCar','MaëlleKelly','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Frazier', 'Dà', 'jfrazier78@cocolog-nifty.com', SHA1(CONCAT('LuxCar','DàFrazier','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Larson', 'Méng', 'dlarson79@wp.com', SHA1(CONCAT('LuxCar','MéngLarson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Smith', 'Mélina', 'jsmith7a@irs.gov', SHA1(CONCAT('LuxCar','MélinaSmith','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Butler', 'Josée', 'abutler7b@cdc.gov', SHA1(CONCAT('LuxCar','JoséeButler','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Williams', 'Göran', 'dwilliams7c@nbcnews.com', SHA1(CONCAT('LuxCar','GöranWilliams','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Cox', 'Anaël', 'mcox7d@simplemachines.org', SHA1(CONCAT('LuxCar','AnaëlCox','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hunt', 'Yénora', 'bhunt7e@loc.gov', SHA1(CONCAT('LuxCar','YénoraHunt','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Garcia', 'Géraldine', 'pgarcia7f@theatlantic.com', SHA1(CONCAT('LuxCar','GéraldineGarcia','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Banks', 'Aloïs', 'pbanks7g@i2i.jp', SHA1(CONCAT('LuxCar','AloïsBanks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Banks', 'Maëlyss', 'wbanks7h@webeden.co.uk', SHA1(CONCAT('LuxCar','MaëlyssBanks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ortiz', 'Crééz', 'cortiz7i@blinklist.com', SHA1(CONCAT('LuxCar','CréézOrtiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henderson', 'Ophélie', 'phenderson7j@qq.com', SHA1(CONCAT('LuxCar','OphélieHenderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Johnston', 'Åke', 'kjohnston7k@foxnews.com', SHA1(CONCAT('LuxCar','ÅkeJohnston','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Franklin', 'Fèi', 'lfranklin7l@dropbox.com', SHA1(CONCAT('LuxCar','FèiFranklin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Publicité', 'rsullivan7m@army.mil', SHA1(CONCAT('LuxCar','PublicitéSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ramirez', 'Dorothée', 'eramirez7n@parallels.com', SHA1(CONCAT('LuxCar','DorothéeRamirez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Perez', 'Anaëlle', 'rperez7o@eepurl.com', SHA1(CONCAT('LuxCar','AnaëllePerez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Williamson', 'Méthode', 'mwilliamson7p@4shared.com', SHA1(CONCAT('LuxCar','MéthodeWilliamson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carpenter', 'Lorène', 'acarpenter7q@ask.com', SHA1(CONCAT('LuxCar','LorèneCarpenter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hall', 'Marlène', 'jhall7r@i2i.jp', SHA1(CONCAT('LuxCar','MarlèneHall','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Olson', 'Gaëlle', 'lolson7s@bluehost.com', SHA1(CONCAT('LuxCar','GaëlleOlson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ford', 'Bérangère', 'lford7t@nyu.edu', SHA1(CONCAT('LuxCar','BérangèreFord','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stephens', 'Méthode', 'dstephens7u@acquirethisname.com', SHA1(CONCAT('LuxCar','MéthodeStephens','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wells', 'Béatrice', 'jwells7v@devhub.com', SHA1(CONCAT('LuxCar','BéatriceWells','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Medina', 'Åslög', 'cmedina7w@businessinsider.com', SHA1(CONCAT('LuxCar','ÅslögMedina','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richards', 'Ruò', 'crichards7x@sogou.com', SHA1(CONCAT('LuxCar','RuòRichards','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kennedy', 'Séverine', 'skennedy7y@soup.io', SHA1(CONCAT('LuxCar','SéverineKennedy','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kim', 'Lèi', 'jkim7z@e-recht24.de', SHA1(CONCAT('LuxCar','LèiKim','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rivera', 'Laurène', 'srivera80@time.com', SHA1(CONCAT('LuxCar','LaurèneRivera','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Greene', 'Josée', 'rgreene81@ted.com', SHA1(CONCAT('LuxCar','JoséeGreene','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ryan', 'Zoé', 'dryan82@go.com', SHA1(CONCAT('LuxCar','ZoéRyan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chavez', 'Inès', 'jchavez83@goodreads.com', SHA1(CONCAT('LuxCar','InèsChavez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Foster', 'Andrée', 'kfoster84@yolasite.com', SHA1(CONCAT('LuxCar','AndréeFoster','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mcdonald', 'Nuó', 'jmcdonald85@themeforest.net', SHA1(CONCAT('LuxCar','NuóMcdonald','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Owens', 'Anaëlle', 'eowens86@surveymonkey.com', SHA1(CONCAT('LuxCar','AnaëlleOwens','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Young', 'Erwéi', 'cyoung87@so-net.ne.jp', SHA1(CONCAT('LuxCar','ErwéiYoung','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Harper', 'Joséphine', 'mharper88@dropbox.com', SHA1(CONCAT('LuxCar','JoséphineHarper','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wright', 'Mélanie', 'mwright89@simplemachines.org', SHA1(CONCAT('LuxCar','MélanieWright','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Allen', 'Océane', 'mallen8a@netlog.com', SHA1(CONCAT('LuxCar','OcéaneAllen','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Johnson', 'Anaël', 'sjohnson8b@fc2.com', SHA1(CONCAT('LuxCar','AnaëlJohnson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gomez', 'Félicie', 'bgomez8c@cafepress.com', SHA1(CONCAT('LuxCar','FélicieGomez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ross', 'Dù', 'sross8d@apple.com', SHA1(CONCAT('LuxCar','DùRoss','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'White', 'Dafnée', 'bwhite8e@canalblog.com', SHA1(CONCAT('LuxCar','DafnéeWhite','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Scott', 'Ruì', 'bscott8f@amazon.de', SHA1(CONCAT('LuxCar','RuìScott','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wilson', 'Mà', 'jwilson8g@yahoo.com', SHA1(CONCAT('LuxCar','MàWilson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Daniels', 'Angèle', 'hdaniels8h@discuz.net', SHA1(CONCAT('LuxCar','AngèleDaniels','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Tucker', 'Mahélie', 'wtucker8i@google.co.jp', SHA1(CONCAT('LuxCar','MahélieTucker','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henderson', 'Clélia', 'shenderson8j@tmall.com', SHA1(CONCAT('LuxCar','CléliaHenderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Barnes', 'Amélie', 'rbarnes8k@mysql.com', SHA1(CONCAT('LuxCar','AmélieBarnes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Howell', 'Ruì', 'whowell8l@dot.gov', SHA1(CONCAT('LuxCar','RuìHowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gardner', 'Méthode', 'dgardner8m@ovh.net', SHA1(CONCAT('LuxCar','MéthodeGardner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wheeler', 'Pénélope', 'dwheeler8n@wsj.com', SHA1(CONCAT('LuxCar','PénélopeWheeler','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Willis', 'Cunégonde', 'mwillis8o@issuu.com', SHA1(CONCAT('LuxCar','CunégondeWillis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Turner', 'Gaëlle', 'tturner8p@smh.com.au', SHA1(CONCAT('LuxCar','GaëlleTurner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gilbert', 'Mégane', 'bgilbert8q@forbes.com', SHA1(CONCAT('LuxCar','MéganeGilbert','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rodriguez', 'Lorène', 'drodriguez8r@soundcloud.com', SHA1(CONCAT('LuxCar','LorèneRodriguez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Franklin', 'Mårten', 'hfranklin8s@google.it', SHA1(CONCAT('LuxCar','MårtenFranklin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Alvarez', 'Inès', 'aalvarez8t@weibo.com', SHA1(CONCAT('LuxCar','InèsAlvarez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ellis', 'Táng', 'cellis8u@g.co', SHA1(CONCAT('LuxCar','TángEllis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Howell', 'Gaëlle', 'dhowell8v@java.com', SHA1(CONCAT('LuxCar','GaëlleHowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Morrison', 'Eléa', 'mmorrison8w@japanpost.jp', SHA1(CONCAT('LuxCar','EléaMorrison','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Barnes', 'Bénédicte', 'bbarnes8x@bbc.co.uk', SHA1(CONCAT('LuxCar','BénédicteBarnes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henderson', 'Méthode', 'dhenderson8y@tmall.com', SHA1(CONCAT('LuxCar','MéthodeHenderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carr', 'Erwéi', 'tcarr8z@jigsy.com', SHA1(CONCAT('LuxCar','ErwéiCarr','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ward', 'Eléa', 'lward90@wp.com', SHA1(CONCAT('LuxCar','EléaWard','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Willis', 'Sélène', 'lwillis91@barnesandnoble.com', SHA1(CONCAT('LuxCar','SélèneWillis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Gaétane', 'msullivan92@deliciousdays.com', SHA1(CONCAT('LuxCar','GaétaneSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richards', 'Maëlyss', 'hrichards93@engadget.com', SHA1(CONCAT('LuxCar','MaëlyssRichards','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fields', 'Maïwenn', 'jfields94@guardian.co.uk', SHA1(CONCAT('LuxCar','MaïwennFields','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rice', 'Dù', 'drice95@liveinternet.ru', SHA1(CONCAT('LuxCar','DùRice','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watkins', 'Aurélie', 'jwatkins96@weibo.com', SHA1(CONCAT('LuxCar','AurélieWatkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Richards', 'Nadège', 'hrichards97@flickr.com', SHA1(CONCAT('LuxCar','NadègeRichards','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Daniels', 'Thérèse', 'ldaniels98@acquirethisname.com', SHA1(CONCAT('LuxCar','ThérèseDaniels','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Knight', 'Alizée', 'jknight99@blogtalkradio.com', SHA1(CONCAT('LuxCar','AlizéeKnight','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carroll', 'Simplifiés', 'ccarroll9a@google.com', SHA1(CONCAT('LuxCar','SimplifiésCarroll','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Johnson', 'Marie-ève', 'sjohnson9b@deviantart.com', SHA1(CONCAT('LuxCar','Marie-èveJohnson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Diaz', 'Mélodie', 'gdiaz9c@amazon.co.jp', SHA1(CONCAT('LuxCar','MélodieDiaz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Powell', 'Stéphanie', 'jpowell9d@loc.gov', SHA1(CONCAT('LuxCar','StéphaniePowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carr', 'Mélys', 'bcarr9e@google.ca', SHA1(CONCAT('LuxCar','MélysCarr','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Garza', 'Torbjörn', 'agarza9f@springer.com', SHA1(CONCAT('LuxCar','TorbjörnGarza','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Frazier', 'Cléopatre', 'afrazier9g@chronoengine.com', SHA1(CONCAT('LuxCar','CléopatreFrazier','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Estève', 'cchapman9h@discuz.net', SHA1(CONCAT('LuxCar','EstèveChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stone', 'Intéressant', 'mstone9i@uol.com.br', SHA1(CONCAT('LuxCar','IntéressantStone','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Payne', 'Mén', 'ppayne9j@wufoo.com', SHA1(CONCAT('LuxCar','MénPayne','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Nichols', 'Maïwenn', 'lnichols9k@hubpages.com', SHA1(CONCAT('LuxCar','MaïwennNichols','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Cooper', 'Sòng', 'ncooper9l@t.co', SHA1(CONCAT('LuxCar','SòngCooper','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Armstrong', 'Mélissandre', 'darmstrong9m@mediafire.com', SHA1(CONCAT('LuxCar','MélissandreArmstrong','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Anderson', 'Liè', 'manderson9n@google.com.br', SHA1(CONCAT('LuxCar','LièAnderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carroll', 'Méthode', 'ncarroll9o@amazon.com', SHA1(CONCAT('LuxCar','MéthodeCarroll','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Washington', 'Angélique', 'ewashington9p@123-reg.co.uk', SHA1(CONCAT('LuxCar','AngéliqueWashington','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Perez', 'Maëlann', 'jperez9q@nature.com', SHA1(CONCAT('LuxCar','MaëlannPerez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kim', 'Wá', 'rkim9r@adobe.com', SHA1(CONCAT('LuxCar','WáKim','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ray', 'Mélia', 'nray9s@google.de', SHA1(CONCAT('LuxCar','MéliaRay','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Griffin', 'Marie-thérèse', 'jgriffin9t@opensource.org', SHA1(CONCAT('LuxCar','Marie-thérèseGriffin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Matthews', 'Athéna', 'jmatthews9u@phpbb.com', SHA1(CONCAT('LuxCar','AthénaMatthews','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Parker', 'Anaïs', 'cparker9v@free.fr', SHA1(CONCAT('LuxCar','AnaïsParker','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawson', 'Félicie', 'tlawson9w@sourceforge.net', SHA1(CONCAT('LuxCar','FélicieLawson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Morales', 'Lài', 'jmorales9x@blogger.com', SHA1(CONCAT('LuxCar','LàiMorales','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ryan', 'Séverine', 'aryan9y@npr.org', SHA1(CONCAT('LuxCar','SéverineRyan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Howell', 'Eugénie', 'whowell9z@illinois.edu', SHA1(CONCAT('LuxCar','EugénieHowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wagner', 'Daphnée', 'awagnera0@digg.com', SHA1(CONCAT('LuxCar','DaphnéeWagner','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Campbell', 'Michèle', 'bcampbella1@t-online.de', SHA1(CONCAT('LuxCar','MichèleCampbell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lewis', 'Geneviève', 'jlewisa2@cafepress.com', SHA1(CONCAT('LuxCar','GenevièveLewis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawrence', 'Adèle', 'ilawrencea3@springer.com', SHA1(CONCAT('LuxCar','AdèleLawrence','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fox', 'Åsa', 'efoxa4@epa.gov', SHA1(CONCAT('LuxCar','ÅsaFox','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hughes', 'Personnalisée', 'mhughesa5@ezinearticles.com', SHA1(CONCAT('LuxCar','PersonnaliséeHughes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Garrett', 'Yáo', 'pgarretta6@timesonline.co.uk', SHA1(CONCAT('LuxCar','YáoGarrett','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Edwards', 'Méng', 'medwardsa7@mtv.com', SHA1(CONCAT('LuxCar','MéngEdwards','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Marshall', 'Börje', 'rmarshalla8@unesco.org', SHA1(CONCAT('LuxCar','BörjeMarshall','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lopez', 'Edmée', 'jlopeza9@va.gov', SHA1(CONCAT('LuxCar','EdméeLopez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'James', 'Irène', 'wjamesaa@naver.com', SHA1(CONCAT('LuxCar','IrèneJames','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Warren', 'Salomé', 'jwarrenab@businessinsider.com', SHA1(CONCAT('LuxCar','SaloméWarren','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Cooper', 'Adélie', 'dcooperac@instagram.com', SHA1(CONCAT('LuxCar','AdélieCooper','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Brooks', 'Adélaïde', 'tbrooksad@indiegogo.com', SHA1(CONCAT('LuxCar','AdélaïdeBrooks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ruiz', 'Cléopatre', 'jruizae@go.com', SHA1(CONCAT('LuxCar','CléopatreRuiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Harris', 'Tú', 'dharrisaf@barnesandnoble.com', SHA1(CONCAT('LuxCar','TúHarris','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Maïté', 'gsullivanag@technorati.com', SHA1(CONCAT('LuxCar','MaïtéSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Austin', 'Hélène', 'raustinah@utexas.edu', SHA1(CONCAT('LuxCar','HélèneAustin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Carr', 'Léana', 'dcarrai@answers.com', SHA1(CONCAT('LuxCar','LéanaCarr','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henderson', 'Océane', 'thendersonaj@amazon.co.uk', SHA1(CONCAT('LuxCar','OcéaneHenderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Little', 'Mélys', 'jlittleak@elpais.com', SHA1(CONCAT('LuxCar','MélysLittle','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Kelley', 'Garçon', 'lkelleyal@imdb.com', SHA1(CONCAT('LuxCar','GarçonKelley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Boyd', 'Örjan', 'jboydam@google.de', SHA1(CONCAT('LuxCar','ÖrjanBoyd','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Morrison', 'Gisèle', 'dmorrisonan@bbb.org', SHA1(CONCAT('LuxCar','GisèleMorrison','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hicks', 'Réservés', 'jhicksao@ask.com', SHA1(CONCAT('LuxCar','RéservésHicks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bradley', 'Anaé', 'lbradleyap@theguardian.com', SHA1(CONCAT('LuxCar','AnaéBradley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Weaver', 'Gaïa', 'wweaveraq@hubpages.com', SHA1(CONCAT('LuxCar','GaïaWeaver','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hunter', 'Eléonore', 'jhunterar@yolasite.com', SHA1(CONCAT('LuxCar','EléonoreHunter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hudson', 'Séréna', 'ahudsonas@usnews.com', SHA1(CONCAT('LuxCar','SérénaHudson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hernandez', 'Joséphine', 'ahernandezat@amazon.co.uk', SHA1(CONCAT('LuxCar','JoséphineHernandez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Phillips', 'Håkan', 'pphillipsau@tinypic.com', SHA1(CONCAT('LuxCar','HåkanPhillips','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Matthews', 'Estée', 'amatthewsav@smh.com.au', SHA1(CONCAT('LuxCar','EstéeMatthews','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watkins', 'Estève', 'bwatkinsaw@diigo.com', SHA1(CONCAT('LuxCar','EstèveWatkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Montgomery', 'Estée', 'nmontgomeryax@fc2.com', SHA1(CONCAT('LuxCar','EstéeMontgomery','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Flores', 'Bérangère', 'dfloresay@salon.com', SHA1(CONCAT('LuxCar','BérangèreFlores','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lawson', 'Laïla', 'blawsonaz@army.mil', SHA1(CONCAT('LuxCar','LaïlaLawson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Coleman', 'Rébecca', 'jcolemanb0@blog.com', SHA1(CONCAT('LuxCar','RébeccaColeman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Johnston', 'Pénélope', 'ajohnstonb1@google.com.au', SHA1(CONCAT('LuxCar','PénélopeJohnston','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ramirez', 'Adèle', 'lramirezb2@blogspot.com', SHA1(CONCAT('LuxCar','AdèleRamirez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Black', 'Mylène', 'cblackb3@live.com', SHA1(CONCAT('LuxCar','MylèneBlack','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Phillips', 'Loïs', 'hphillipsb4@indiegogo.com', SHA1(CONCAT('LuxCar','LoïsPhillips','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Boyd', 'Björn', 'dboydb5@flickr.com', SHA1(CONCAT('LuxCar','BjörnBoyd','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moore', 'Annotés', 'amooreb6@ebay.com', SHA1(CONCAT('LuxCar','AnnotésMoore','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Simmons', 'Gisèle', 'rsimmonsb7@umn.edu', SHA1(CONCAT('LuxCar','GisèleSimmons','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Spencer', 'Réservés', 'cspencerb8@1688.com', SHA1(CONCAT('LuxCar','RéservésSpencer','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hayes', 'Wá', 'bhayesb9@pagesperso-orange.fr', SHA1(CONCAT('LuxCar','WáHayes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Powell', 'Dorothée', 'jpowellba@sbwire.com', SHA1(CONCAT('LuxCar','DorothéePowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Porter', 'Nélie', 'rporterbb@oaic.gov.au', SHA1(CONCAT('LuxCar','NéliePorter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Dunn', 'Desirée', 'wdunnbc@acquirethisname.com', SHA1(CONCAT('LuxCar','DesiréeDunn','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Flores', 'Anaël', 'pfloresbd@earthlink.net', SHA1(CONCAT('LuxCar','AnaëlFlores','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Brooks', 'Médiamass', 'rbrooksbe@deviantart.com', SHA1(CONCAT('LuxCar','MédiamassBrooks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watkins', 'Solène', 'awatkinsbf@usnews.com', SHA1(CONCAT('LuxCar','SolèneWatkins','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Young', 'Athéna', 'myoungbg@howstuffworks.com', SHA1(CONCAT('LuxCar','AthénaYoung','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sanders', 'Yú', 'jsandersbh@msn.com', SHA1(CONCAT('LuxCar','YúSanders','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stone', 'Åke', 'fstonebi@newyorker.com', SHA1(CONCAT('LuxCar','ÅkeStone','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Anderson', 'Laurélie', 'randersonbj@sitemeter.com', SHA1(CONCAT('LuxCar','LaurélieAnderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'George', 'Maëly', 'tgeorgebk@omniture.com', SHA1(CONCAT('LuxCar','MaëlyGeorge','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Banks', 'Zoé', 'ebanksbl@marriott.com', SHA1(CONCAT('LuxCar','ZoéBanks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Larson', 'Eloïse', 'clarsonbm@google.com', SHA1(CONCAT('LuxCar','EloïseLarson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'James', 'Desirée', 'pjamesbn@webmd.com', SHA1(CONCAT('LuxCar','DesiréeJames','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hanson', 'Chloé', 'whansonbo@stumbleupon.com', SHA1(CONCAT('LuxCar','ChloéHanson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ramirez', 'Wá', 'jramirezbp@ucoz.com', SHA1(CONCAT('LuxCar','WáRamirez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Harper', 'Liè', 'pharperbq@e-recht24.de', SHA1(CONCAT('LuxCar','LièHarper','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fowler', 'Réjane', 'mfowlerbr@earthlink.net', SHA1(CONCAT('LuxCar','RéjaneFowler','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stephens', 'Geneviève', 'rstephensbs@sourceforge.net', SHA1(CONCAT('LuxCar','GenevièveStephens','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Jones', 'Aí', 'jjonesbt@tuttocitta.it', SHA1(CONCAT('LuxCar','AíJones','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Cole', 'Jú', 'ccolebu@pinterest.com', SHA1(CONCAT('LuxCar','JúCole','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fisher', 'Marie-josée', 'kfisherbv@so-net.ne.jp', SHA1(CONCAT('LuxCar','Marie-joséeFisher','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Daniels', 'Laïla', 'cdanielsbw@newyorker.com', SHA1(CONCAT('LuxCar','LaïlaDaniels','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Day', 'Kévina', 'sdaybx@mit.edu', SHA1(CONCAT('LuxCar','KévinaDay','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ruiz', 'Naëlle', 'sruizby@hatena.ne.jp', SHA1(CONCAT('LuxCar','NaëlleRuiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Smith', 'Clémentine', 'jsmithbz@123-reg.co.uk', SHA1(CONCAT('LuxCar','ClémentineSmith','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mcdonald', 'Illustrée', 'lmcdonaldc0@theguardian.com', SHA1(CONCAT('LuxCar','IllustréeMcdonald','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Brown', 'Angèle', 'kbrownc1@tinypic.com', SHA1(CONCAT('LuxCar','AngèleBrown','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Alvarez', 'Kuí', 'jalvarezc2@samsung.com', SHA1(CONCAT('LuxCar','KuíAlvarez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Wallace', 'Cléopatre', 'vwallacec3@mlb.com', SHA1(CONCAT('LuxCar','CléopatreWallace','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Burke', 'Loïs', 'cburkec4@ustream.tv', SHA1(CONCAT('LuxCar','LoïsBurke','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hernandez', 'Maëly', 'khernandezc5@chicagotribune.com', SHA1(CONCAT('LuxCar','MaëlyHernandez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Woods', 'Maëlle', 'lwoodsc6@yellowpages.com', SHA1(CONCAT('LuxCar','MaëlleWoods','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Boyd', 'Aurélie', 'lboydc7@nhs.uk', SHA1(CONCAT('LuxCar','AurélieBoyd','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Peters', 'Ráo', 'apetersc8@netlog.com', SHA1(CONCAT('LuxCar','RáoPeters','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moreno', 'Mà', 'cmorenoc9@google.de', SHA1(CONCAT('LuxCar','MàMoreno','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henderson', 'Thérèsa', 'phendersonca@msu.edu', SHA1(CONCAT('LuxCar','ThérèsaHenderson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Montgomery', 'Andréa', 'kmontgomerycb@ted.com', SHA1(CONCAT('LuxCar','AndréaMontgomery','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Powell', 'Daphnée', 'lpowellcc@nasa.gov', SHA1(CONCAT('LuxCar','DaphnéePowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Mitchell', 'Marylène', 'amitchellcd@netlog.com', SHA1(CONCAT('LuxCar','MarylèneMitchell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Holmes', 'Håkan', 'cholmesce@usnews.com', SHA1(CONCAT('LuxCar','HåkanHolmes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Phillips', 'Maëlle', 'cphillipscf@google.com.au', SHA1(CONCAT('LuxCar','MaëllePhillips','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ferguson', 'Hélène', 'lfergusoncg@foxnews.com', SHA1(CONCAT('LuxCar','HélèneFerguson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gray', 'Personnalisée', 'bgraych@topsy.com', SHA1(CONCAT('LuxCar','PersonnaliséeGray','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Edwards', 'Lucrèce', 'aedwardsci@nbcnews.com', SHA1(CONCAT('LuxCar','LucrèceEdwards','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bowman', 'Styrbjörn', 'mbowmancj@rediff.com', SHA1(CONCAT('LuxCar','StyrbjörnBowman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Robinson', 'Méng', 'drobinsonck@elpais.com', SHA1(CONCAT('LuxCar','MéngRobinson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'West', 'Mélys', 'pwestcl@163.com', SHA1(CONCAT('LuxCar','MélysWest','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Miller', 'Miléna', 'mmillercm@vkontakte.ru', SHA1(CONCAT('LuxCar','MilénaMiller','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Woods', 'Kallisté', 'kwoodscn@gmpg.org', SHA1(CONCAT('LuxCar','KallistéWoods','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Baker', 'Maëlla', 'kbakerco@php.net', SHA1(CONCAT('LuxCar','MaëllaBaker','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Maïlys', 'ksullivancp@shinystat.com', SHA1(CONCAT('LuxCar','MaïlysSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fernandez', 'Eloïse', 'ffernandezcq@skype.com', SHA1(CONCAT('LuxCar','EloïseFernandez','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Armstrong', 'Eloïse', 'aarmstrongcr@edublogs.org', SHA1(CONCAT('LuxCar','EloïseArmstrong','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Williamson', 'Maïlys', 'jwilliamsoncs@china.com.cn', SHA1(CONCAT('LuxCar','MaïlysWilliamson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Bénédicte', 'cchapmanct@mediafire.com', SHA1(CONCAT('LuxCar','BénédicteChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Peters', 'Maéna', 'apeterscu@time.com', SHA1(CONCAT('LuxCar','MaénaPeters','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Moreno', 'Stéphanie', 'wmorenocv@skype.com', SHA1(CONCAT('LuxCar','StéphanieMoreno','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Spencer', 'Géraldine', 'bspencercw@angelfire.com', SHA1(CONCAT('LuxCar','GéraldineSpencer','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Gray', 'Annotée', 'rgraycx@slideshare.net', SHA1(CONCAT('LuxCar','AnnotéeGray','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Black', 'Léonie', 'eblackcy@dailymail.co.uk', SHA1(CONCAT('LuxCar','LéonieBlack','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ortiz', 'Åsa', 'sortizcz@netlog.com', SHA1(CONCAT('LuxCar','ÅsaOrtiz','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Fox', 'Méthode', 'dfoxd0@bandcamp.com', SHA1(CONCAT('LuxCar','MéthodeFox','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Davis', 'Thérèsa', 'sdavisd1@webmd.com', SHA1(CONCAT('LuxCar','ThérèsaDavis','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Howard', 'Garçon', 'ehowardd2@phpbb.com', SHA1(CONCAT('LuxCar','GarçonHoward','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bailey', 'Maïté', 'hbaileyd3@infoseek.co.jp', SHA1(CONCAT('LuxCar','MaïtéBailey','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Ray', 'Audréanne', 'hrayd4@over-blog.com', SHA1(CONCAT('LuxCar','AudréanneRay','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Burton', 'Görel', 'aburtond5@mapy.cz', SHA1(CONCAT('LuxCar','GörelBurton','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Perry', 'Rachèle', 'sperryd6@163.com', SHA1(CONCAT('LuxCar','RachèlePerry','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Barnes', 'Zhì', 'gbarnesd7@blog.com', SHA1(CONCAT('LuxCar','ZhìBarnes','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Henry', 'Méline', 'ehenryd8@comcast.net', SHA1(CONCAT('LuxCar','MélineHenry','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Butler', 'Clélia', 'gbutlerd9@cargocollective.com', SHA1(CONCAT('LuxCar','CléliaButler','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Martin', 'Méryl', 'rmartinda@amazon.co.jp', SHA1(CONCAT('LuxCar','MérylMartin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Andrews', 'Cécile', 'landrewsdb@vkontakte.ru', SHA1(CONCAT('LuxCar','CécileAndrews','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Daniels', 'Styrbjörn', 'mdanielsdc@omniture.com', SHA1(CONCAT('LuxCar','StyrbjörnDaniels','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lee', 'Anaé', 'aleedd@seesaa.net', SHA1(CONCAT('LuxCar','AnaéLee','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Watson', 'Cécile', 'jwatsonde@shinystat.com', SHA1(CONCAT('LuxCar','CécileWatson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Lane', 'Mélia', 'nlanedf@prnewswire.com', SHA1(CONCAT('LuxCar','MéliaLane','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hunter', 'Méng', 'dhunterdg@webs.com', SHA1(CONCAT('LuxCar','MéngHunter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Montgomery', 'Angèle', 'amontgomerydh@nps.gov', SHA1(CONCAT('LuxCar','AngèleMontgomery','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Hicks', 'Anaël', 'jhicksdi@shutterfly.com', SHA1(CONCAT('LuxCar','AnaëlHicks','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Sullivan', 'Erwéi', 'jsullivandj@elpais.com', SHA1(CONCAT('LuxCar','ErwéiSullivan','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bell', 'Rachèle', 'dbelldk@constantcontact.com', SHA1(CONCAT('LuxCar','RachèleBell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'James', 'Hélène', 'mjamesdl@noaa.gov', SHA1(CONCAT('LuxCar','HélèneJames','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Austin', 'Dorothée', 'jaustindm@infoseek.co.jp', SHA1(CONCAT('LuxCar','DorothéeAustin','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Porter', 'Françoise', 'jporterdn@t.co', SHA1(CONCAT('LuxCar','FrançoisePorter','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Thompson', 'Eloïse', 'tthompsondo@ezinearticles.com', SHA1(CONCAT('LuxCar','EloïseThompson','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Powell', 'Loïca', 'apowelldp@typepad.com', SHA1(CONCAT('LuxCar','LoïcaPowell','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Chapman', 'Kallisté', 'kchapmandq@sciencedirect.com', SHA1(CONCAT('LuxCar','KallistéChapman','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Pierce', 'Görel', 'mpiercedr@networkadvertising.org', SHA1(CONCAT('LuxCar','GörelPierce','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Murray', 'Danièle', 'lmurrayds@hud.gov', SHA1(CONCAT('LuxCar','DanièleMurray','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Rice', 'Marie-ève', 'fricedt@wordpress.org', SHA1(CONCAT('LuxCar','Marie-èveRice','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Stanley', 'Cécilia', 'astanleydu@typepad.com', SHA1(CONCAT('LuxCar','CéciliaStanley','LuxCar')));
insert into Inscrit (idCategorie, nomInscrit, prenomInscrit, mailInscrit, pswInscrit) values ('CL', 'Bailey', 'Célia', 'dbaileydv@pbs.org', SHA1(CONCAT('LuxCar','CéliaBailey','LuxCar')));

-- Structure de la table 'Marque'

CREATE TABLE IF NOT EXISTS Marque(
	idMarque smallint(3) NOT NULL auto_increment,
	nomMarque varchar(20) NOT NULL,
	logoMarque varchar(50),
	PRIMARY KEY (idMarque)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Marque'

INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Aston Martin","images/logo/tn_logo_astonmartin.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Audi","images/logo/tn_logo_audi.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("BMW","images/logo/tn_logo_bmw.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Bugatti","images/logo/tn_logo_bugatti.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Ferrari","images/logo/tn_logo_ferrari.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Jaguar","images/logo/tn_logo_jaguar.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Lamborghini","images/logo/tn_logo_lamborghini.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Lexus","images/logo/tn_logo_lexus.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Maserati","images/logo/tn_logo_maserati.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Mercedes","images/logo/tn_logo_mercedes.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("Porsche","images/logo/tn_logo_porsche.jpeg");
INSERT INTO Marque (nomMarque, logoMarque) VALUES ("W Motors","images/logo/tn_logo_wmotors.jpeg");


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
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Toit ouvrant","Pour apprécier une conduite la tête dans les nuages, optez pour ce toit ouvrant très design qui vous fera oublier tous vos soucis",524.99);
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
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Roue de secours","Cette roue deviendra votre meilleure amie si par malchance quelqu'un de mal intentionné vous a crevé votre berline adorée",2640.00);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Camera de parking arriere","Cette caméra se révèle indispensable pour d'éviter que votre berline ne grignotte les murs lorsque vous vous garez", 2640.90);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Peinture anti-rayures","Grâce à cette superbe peinture anti-rayures, vous pourrez vous permettre de rentrer dans la clio d'à côté lors de vos créneaux",15292.90);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Siège passager éjectable","Si la compagnie de votre co-pilote devient un supplice, vous ne regretterez pas cette investissement", 26550.99);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Système Plaque Immatriculation Interchangeable","Grâce à votre deuxième plaque d'immatriculation cachée, fini les problèmes de radars", 18620.00);
INSERT INTO Options (nomOption, descriptionOption, prixOption) VALUES ("Boîte automatique","Grâce à la boîte automatique vous serez en mesure de rouler les mains dans les poches ! ou presque...", 10120.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Pack racing en fibre carbone", 10080.00);
INSERT INTO Options (nomOption, prixOption) VALUES ("Sièges électriques", 4914.00);


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

-- Insertion table 'Modèle'

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"Vantage","images/modele/1_1.png",180000.90,15);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"DB9","images/modele/1_2.png",175000.99,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"Rapide S","images/modele/1_3.png",185000.50,9);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (1,"Vanquish","images/modele/1_4.png",195000,5);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"A7","images/modele/2_1.png",55000,22);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"A8","images/modele/2_2.png",73000.99,21);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"TT","images/modele/2_3.png",105000,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"R8","images/modele/2_4.png",118000.90,9);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (2,"RS","images/modele/2_5.png",125000,10);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (3,"Série 2 Cabriolet","images/modele/3_1.png",37500.80,30);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (3,"Série 3 Berline","images/modele/3_2.png",29000.99,10);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (3,"Série 4 Coupé","images/modele/3_3.png",39200,20);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (3,"Série 5 Berline","images/modele/3_4.png",39500.99,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (3,"Série 6 Cabriolet","images/modele/3_5.png",93450,8);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (3,"Série 6 Gran Coupé","images/modele/3_5.png",86550.50,6);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (4,"Veyron","images/modele/4_1.jpeg",2350000.99,1);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (4,"Grand sport","images/modele/4_2.jpeg",2500000,3);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (5,"LaFerrari","images/modele/5_1.jpeg",1200000.90,2);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (5,"F12 Berlinetta","images/modele/5_2.jpeg",290000.50,5);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (5,"Spider","images/modele/5_3.jpeg",285000.30,4);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (5,"FF","images/modele/5_4.jpeg",290000,8);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (6,"XE Prestige","images/modele/6_1.png",41210.99,9);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (6,"XJ","images/modele/6_2.png",82400,7);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (6,"F-Type R Coupé","images/modele/6_3.png",107660.90,10);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (7,"Veneno","images/modele/7_1.jpeg",3300000.90,3);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (7,"Aventador","images/modele/7_2.jpeg",392000.99,6);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (7,"Huracan","images/modele/7_3.jpeg",260000,4);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (7,"Gallardo","images/modele/7_4.jpeg",220000.99,7);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (8,"CT 200h","images/modele/8_1.png",27990.50,17);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (8,"IS 250","images/modele/8_2.png",43390,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (8,"RC F","images/modele/8_3.png",79790.90,9);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (8,"LS 600h L","images/modele/8_4.png",150500,5);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (9,"Ghibli","images/modele/9_1.jpeg",67250,11);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (9,"Quattroporte GTS","images/modele/9_2.jpeg",150700.99,10);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (9,"GranTurismo MC Stradale","images/modele/9_3.jpeg",154950.99,11);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (9,"GranCabrio MC","images/modele/9_4.jpeg",153800,13);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (10,"Classe E Cabriolet","images/modele/10_1.png",95000,13);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (10,"SLK","images/modele/10_2.png",88000.90,8);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (10,"Classe S Coupé","images/modele/10_3.png",100000.50,5);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (10,"Classe E Cabriolet","images/modele/10_4.png",98000,12);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (10,"Classe E Coupé","images/modele/10_5.png",99999.99,3);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"Boxster","images/modele/11_1.png",82430.50,15);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"Cayman","images/modele/11_2.png",88310,6);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"911","images/modele/11_3.png",140285.90,3);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"918 Spyder","images/modele/11_4.png",777997.90,3);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"Panamera","images/modele/11_5.png",166000.99,8);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"Macan","images/modele/11_6.png",84000,4);
INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (11,"Cayenne","images/modele/11_7.png",170000,2);

INSERT INTO Modele (idMarque, nomModele, imgModele, prixModele, nbDisponible) VALUES (12,"Lykan hypersport","images/modele/12_1.jpeg",3600000,1);

-- Structure de la table 'Etat' (spécifie l'état d'un devis : En attente (AT), validé (VA), annulé (AN))

CREATE TABLE IF NOT EXISTS Etat(
	idEtat char(2) NOT NULL,
	nomEtat varchar(15) NOT NULL,
	PRIMARY KEY (idEtat)
	) ENGINE=InnoDB CHARACTER SET latin1;

-- Insertion table 'Etat'

INSERT INTO Etat VALUES ("AT","En attente");
INSERT INTO Etat VALUES ("VA","Validé");
INSERT INTO Etat VALUES ("AN","Annulé");

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
CREATE TRIGGER calcul_prix_devis
AFTER INSERT ON LigneOption FOR EACH ROW
BEGIN
	DECLARE prixOp float(8,2);
	SET @prixOp = (SELECT prixOption FROM Options WHERE idOption = NEW.idOption); 
	UPDATE Devis SET prixDevis = prixDevis + @prixOp WHERE idDevis = NEW.idDevis;
END;//
delimiter ;