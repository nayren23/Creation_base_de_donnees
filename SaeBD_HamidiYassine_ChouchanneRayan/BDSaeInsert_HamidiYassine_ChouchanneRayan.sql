/* -----------------------------------------------------------------------
BASE de DONNEES : systeme de reservation
Auteur : Rayan CHOUCHANE Yassine HAMIDI
------------------------------------------------------------------------- */

-- table Clients

insert into  Clients(AdrCourriel ,NumTel ,Prenom,Nom ,DateNais ,AdrPostale ) VALUES 
  ('StephanieGousse@rhyta.com','02.21.94.95.03', 'Stephanie', 'Gousse','12-01-1983','10, avenue du Marechal Juin'),
  ('TheophilePiedalue@rhyta.com','01.91.89.15.21', 'Theophile', 'Piedalue','29-10-1956','85, place Stanislas'),
  ('FletcherBrunelle@teleworm.us','03.37.34.49.17', 'Fletcher', 'Brunelle','11-12-1948','59370 MONS-EN-BAROEUL '),
  ('MartineGoudreau@armyspy.com','03.04.69.47.18', 'Martine', 'Goudreau','24-01-1965','40, boulevard Bryas'),
  ('CosetteDuLin@dayrep.com','01.92.35.46.43', 'Cosette', 'DuLin','18-04-1951','52, rue Saint Germain'),
  ('LeonMailloux@armyspy.com','01.96.80.46.88', 'Leon', 'Mailloux','10-04-1977','35, rue Saint Germain'),
  ('KarelMargand@teleworm.us','01.33.94.12.84', 'Karel', 'Margand','15-11-1940','94, rue Descartes'),
  ('HeleneDuclos@dayrep.com','05.20.65.47.17', 'Helene', 'Duclos','23-04-1956','30, cours Jean Jaures'),
  ('XavierreGour@jourrapide.com','02.84.06.64.35', 'Xavierre', 'Gour','07-07-1939','97, avenue Jean Portalis'),
  ('Rayanchouchane@elbogoss.com','10.21.32.43.54', 'Rayan', 'Chouchane','23-07-2003','10, avenue du Beau goss del cartel'),
  ('Yassinehamidi@elpatrondelcartel@cartel.fr','06.12.13.14.15', 'Yassine', 'Hamidi','13-03-2003','20, rue du cartel italie'),
  ('Erenjaeger@snk.com','05.24.96.45.13', 'Eren', 'Jaeger','30-03-1983','10, district de shiganshina'),
  ('Leviackerman@snk.com','01.01.01.01.01', 'Levi', 'Ackerman','25-12-1983','30, district de shiganshina'),
  ('NoelBoule@teleworm.us','02.07.03.52.65', 'Noël', 'Boule','30-06-1985','36, Chemin des Bateliers'),
  ('SomerMireault@dayrep.com','01.37.29.25.91', 'Somer', 'Mireault','09-02-1962','92, Avenue des Pres'),
  ('GanoMigneault@jourrapide.com','03.90.13.01.58', 'Gano', 'Migneault','08-01-1965','78, avenue de Provence'),
  ('AntoinetteBourassa@rhyta.com','04.59.43.61.86', 'Antoinette', 'Bourassa','03-09-1969','46, rue Banaudon'),
  ('VardenRossignol@rhyta.com','04.99.03.30.78', 'Varden', 'Rossignol','07-07-1996','50, Rue du Limas'),
  ('SeniorDeGrasse@jourrapide.com','02.07.59.63.80', 'Senior', 'DeGrasse','15-03-1991','61, Place Napoleon'),
  ('LeverettClement@armyspy.com','01.22.01.06.37', 'Leverett', 'Clement','14-08-1994','90, Rue Bonnet');


  -- table Pays
insert into Pays (NumPays, NomPays)VALUES 
  (1, 'France'), 
  (2, 'Tunisie'), 
  (3, 'Chine'), 
  (4, 'Colombie'),
  (5, 'Japon'),
  (6, 'Royaume-Unis');

  
  -- table Passeport
insert into Passeport (NumPasseport, Nationalite, AdrCourriel)VALUES 
('12FR12345','FR','StephanieGousse@rhyta.com'),
('13FR13345','FR','TheophilePiedalue@rhyta.com'),
('14FR14345','FR','SeniorDeGrasse@jourrapide.com'),
('15FR15345','FR','CosetteDuLin@dayrep.com'),
('16FR16345','FR','FletcherBrunelle@teleworm.us'),
('17FR17345','FR','AntoinetteBourassa@rhyta.com'),
('18FR18345','FR','MartineGoudreau@armyspy.com'),
('19FR19345','FR','KarelMargand@teleworm.us'),
('21FR12445','FR','HeleneDuclos@dayrep.com'),
('22FR12545','FR','LeonMailloux@armyspy.com'),
('23FR12645','FR','XavierreGour@jourrapide.com'),
('23FR12745','FR','Rayanchouchane@elbogoss.com'),
('23FR12845','FR','Yassinehamidi@elpatrondelcartel@cartel.fr'),
('23FR12945','FR','Erenjaeger@snk.com'),
('23FR12355','FR','Leviackerman@snk.com'),
('23FR12665','FR','NoelBoule@teleworm.us'),
('23FR12675','FR','SomerMireault@dayrep.com'),
('23FR12685','FR','GanoMigneault@jourrapide.com'),
('23FR12695','FR','VardenRossignol@rhyta.com'),
('23FR12615','FR','LeverettClement@armyspy.com');


  -- table Villes
insert into Ville (CodePostal, NomVille, NumPays)VALUES 
  ('75000'   , 'Paris', 1), 
  ('13000'   , 'Marseilles', 1),
  ('1000'    , 'Tunis',2),
  ('3200'    , 'Tataouine',2), 
  ('100000'  , 'Beijing',3), 
  ('200000i' , 'Shanghai',3),
  ('110000'  , 'Bogota',4),
  ('910000'  , 'Amazonas',4),
  ('100-0000', 'Tokyo', 5),
  ('530-0000', 'Osaka',5),
  ('WC1B'    , 'Londre',6),
  ('G2 1DU'  , 'Glasgow',6);
  
-- table Aeroports

insert into Aeroports (idAeroport, IATA, NomAeroport, CodePostal)VALUES 
  (1, 'CDG','Aeroport de Paris-Charles de Gaulle','75000'), 
  (2, 'MRP','Aeroport Marseille Provence','13000'), 
  (3, 'TUN','Aeroport de Tunis-Carthage','1000' ), 
  (4, 'EBM','Aerodrome El Borma','3200'),
  (5, 'BEK','Aeroport international de Pekin','100000'),
  (6, 'PVG','Aeroport international de Shanghai-Pudong','200000i'), 
  (7, 'POG','Aeroport Bogota-El Dorado','110000' ), 
  (8, 'MAO','Aeroport international de Manaus – Eduardo Gomes','910000'), 
  (9, 'HND','Aeroport international de Tokyo-Haneda','100-0000'),
  (10,'ITM','Aeroport international Osaka','530-0000'), 
  (11,'LCY','Aeroport de Londres City','WC1B'),
  (12,'GLA','Aeroport international de Glasgow','G2 1DU');


-- table Compagnies
insert into Compagnie (CodeCompagnie, NomCompagnie, NumPays)VALUES 
  ('A5', 'Air France',1), 
  ('BJ', 'Nouvelair Tunisia',2), 
  ('CA', 'Air China',3), 
  ('L7', 'LANCO',4),
  ('NU', 'Japan Transocean Air',5),
  ('ZB', 'Monarch Airlines',6);


-- table Reservations
  insert into  Reservation(NumReservation, DateReserv, Classe, PrixTotal, Statut, AdrCourriel, CodePostal) VALUES 
  (1 , '14-12-2021', 'Premiere Classe'  , '2900','reserve' ,'StephanieGousse@rhyta.com','75000' ),
  (2 , '12-01-2022', 'Premiere Classe'  , '2900','reserve' ,'TheophilePiedalue@rhyta.com','910000' ),
  (3 , '31-07-2019', 'Classe Economique', '620' ,'annule'  ,'FletcherBrunelle@teleworm.us','100000'),
  (4 , '21-04-2015', 'Classe Economique', '620' ,'reserve' ,'MartineGoudreau@armyspy.com','200000i' ),
  (5 , '13-12-2016', 'Premiere Classe'  , '2900','reserve' ,'CosetteDuLin@dayrep.com','530-0000' ),
  (6 , '03-11-2017', 'Classe Economique', '620' ,'reserve' ,'KarelMargand@teleworm.us','G2 1DU' ),
  (7 , '25-04-2019', 'Premiere Classe'  , '2900','reserve' ,'Yassinehamidi@elpatrondelcartel@cartel.fr','75000'),
  (8 , '26-09-2019', 'Classe Economique', '620' ,'supprime','AntoinetteBourassa@rhyta.com','WC1B' ),
  (9 , '17-07-2020', 'Classe Economique', '620' ,'reserve' ,'Rayanchouchane@elbogoss.com','110000' ),
  (10, '05-01-2020', 'Premiere Classe'  , '2900','supprime','SeniorDeGrasse@jourrapide.com','75000' ),
  (11, '17-04-2021', 'Premiere Classe'  , '2900','supprime','XavierreGour@jourrapide.com', '75000'),
  (12, '16-03-2021', 'Classe Economique', '620' ,'annule'  ,'AntoinetteBourassa@rhyta.com','530-0000' ),
  (13, '19-02-2021', 'Premiere Classe'  , '2900' ,'reserve','CosetteDuLin@dayrep.com','WC1B' ),
  (14, '29-09-2021', 'Premiere Classe'  , '2900','annule'  ,'NoelBoule@teleworm.us','13000' ),
  (15, '02-10-2019', 'Classe Economique', '620' ,'reserve' ,'MartineGoudreau@armyspy.com','100-0000' ),
  (16, '14-11-2020', 'Classe Economique', '620' ,'supprime','StephanieGousse@rhyta.com','3200' ),
  (17, '15-10-2020', 'Premiere Classe'  , '2900','annule'  ,'Yassinehamidi@elpatrondelcartel@cartel.fr','75000' ),
  (18, '21-12-2020', 'Premiere Classe'  , '2900','reserve' ,'Rayanchouchane@elbogoss.com','530-0000' ),
  (19, '21-11-2021', 'Classe Economique', '620' ,'reserve' ,'KarelMargand@teleworm.us','13000' ),
  (20, '14-04-2018', 'Premiere Classe'  , '2900','reserve' ,'LeverettClement@armyspy.com','75000' );

-- table Vols
  insert into  Vols( NumVol,CapaciteSieges, DateHeureDepart, DateHeureArrivee, idAeroport,CodeCompagnie) VALUES 
  (1,300,'2020-04-02 12:00:00-07','2020-04-02 18:00:00-07',2,'A5'),
  (2,300,'2021-05-02 12:00:00-07','2021-05-02 14:00:00-07',5,'BJ'),
  (3,300,'2020-06-02 15:00:00-07','2020-06-02 17:00:00-07',12,'CA'),
  (4,300,'2021-07-02 20:00:00-07','2021-07-03 12:00:00-07',11,'ZB'),
  (5,300,'2020-08-02 18:00:00-07','2020-08-02 20:00:00-07',10,'A5'),
  (6,300,'2021-09-02 00:00:00-07','2021-09-03 05:00:00-07',9,'BJ'),
  (7,300,'2020-10-02 01:00:00-07','2020-10-02 05:00:00-07',8,'CA'),
  (8,300,'2021-11-02 12:00:00-07','2021-11-02 17:00:00-07',7,'ZB'),
  (9,300,'2020-12-02 17:00:00-07','2020-12-02 23:00:00-07',6,'A5'),
  (10,300,'2021-01-02 11:00:00-07','2021-01-02 15:00:00-07',5,'BJ'),
  (11,300,'2020-02-02 20:00:00-07','2020-02-03 01:00:00-07',4,'NU'),
  (12,300,'2021-03-02 10:00:00-07','2021-03-02 16:00:00-07',3,'ZB'),
  (13,300,'2020-04-02 12:00:00-07','2020-04-02 19:00:00-07',2,'A5'),
  (14,300,'2021-05-02 15:00:00-07','2021-05-02 20:00:00-07',1,'BJ'),
  (15,300,'2021-06-02 17:00:00-07','2020-06-03 02:00:00-07',1,'ZB'),
  (16,300,'2021-07-02 20:00:00-07','2021-07-03 01:00:00-07',2,'ZB'),
  (17,300,'2020-08-02 02:00:00-07','2020-08-02 08:00:00-07',3,'A5'),
  (18,300,'2021-09-02 05:00:00-07','2021-09-02 12:00:00-07',4,'BJ'),
  (19,300,'2020-10-02 07:00:00-07','2020-10-02 14:00:00-07',5,'CA'),
  (20,300,'2021-11-02 15:00:00-07','2021-11-02 21:00:00-07',6,'NU');

-- table Concerner
insert into  Concerner(NumVol,NumReservation) VALUES 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

-- table Desservir
insert into  Desservir(idAeroport,CodeCompagnie) VALUES 
(1,'A5'),
(2,'BJ'),
(3,'L7'),
(4,'NU'),
(5,'A5'),
(6,'ZB'),
(7,'L7'),
(8,'A5'),
(9,'CA'),
(10,'BJ'),
(11,'CA'),
(12,'BJ');

