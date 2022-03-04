/* -----------------------------------------------------------------------
BASE de DONNEES : système de réservation
Auteur : Rayan CHOUCHANE Yassine HAMIDI
------------------------------------------------------------------------- */

DROP SCHEMA IF EXISTS BookWing CASCADE ;


CREATE TABLE BookWing.Clients(
   AdrCourriel VARCHAR(60) PRIMARY KEY,
   NumTel VARCHAR(15),
   Prenom VARCHAR(30),
   Nom VARCHAR(30),
   DateNais DATE,
   AdrPostale VARCHAR(40)
);

CREATE TABLE BookWing.Pays(
   NumPays INT PRIMARY KEY,
   NomPays VARCHAR(50)
);


CREATE TABLE BookWing.Passeport(
   NumPasseport VARCHAR(9) PRIMARY KEY,
   Nationalite VARCHAR(20),
   AdrCourriel VARCHAR(50) REFERENCES Clients(AdrCourriel) NOT NULL
);


CREATE TABLE  BookWing.Ville(
   CodePostal VARCHAR(20) PRIMARY KEY,
   NomVille VARCHAR(20),
   NumPays INT REFERENCES Pays(NumPays) NOT NULL
);


CREATE TABLE  BookWing.Aeroports(
   idAeroport INT PRIMARY KEY,
   IATA CHAR(3),
   NomAeroport VARCHAR(70),
   CodePostal VARCHAR(20) REFERENCES Ville(CodePostal) NOT NULL
);


CREATE TABLE  BookWing.Compagnie(
   CodeCompagnie VARCHAR(20) PRIMARY KEY,
   NomCompagnie VARCHAR(20),
   NumPays INT REFERENCES Pays(NumPays) NOT NULL
);


CREATE TABLE  BookWing.Reservation(
   NumReservation INT PRIMARY KEY,
   DateReserv DATE,
   Classe VARCHAR(50),
   PrixTotal DECIMAL,
   Statut VARCHAR(10),
   AdrCourriel VARCHAR(50) REFERENCES Clients(AdrCourriel) NOT NULL,
   CodePostal VARCHAR(20) REFERENCES Ville(CodePostal) NOT NULL
);


CREATE TABLE BookWing.Vols(
   NumVol INT PRIMARY KEY,
   CapaciteSieges INT,
   DateHeureDepart TIMESTAMP,
   DateHeureArrivee TIMESTAMP,
   idAeroport INT REFERENCES Aeroports(idAeroport) NOT NULL,
   CodeCompagnie VARCHAR(20) REFERENCES Compagnie(CodeCompagnie) NOT NULL
);


CREATE TABLE BookWing.Concerner(
   NumVol INT REFERENCES Vols(NumVol) NOT NULL,
   NumReservation INT REFERENCES Reservation(NumReservation) NOT NULL,
   PRIMARY KEY(NumVol,NumReservation) 
);


CREATE TABLE BookWing.Desservir(
   idAeroport INT REFERENCES Aeroports(idAeroport) NOT NULL,
   CodeCompagnie VARCHAR(20) REFERENCES Compagnie(CodeCompagnie) NOT NULL,
   PRIMARY KEY(idAeroport,CodeCompagnie) 
);