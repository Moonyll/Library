/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: livre
------------------------------------------------------------*/
CREATE DATABASE [library]
GO

USE [library]
GO

CREATE TABLE livre(
	id              INT IDENTITY (1,1),
	titre           VARCHAR (255),
	nom_auteur      VARCHAR (255),
	prenom_auteur   VARCHAR (255),
	CONSTRAINT livre_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: client
------------------------------------------------------------*/
CREATE TABLE client(
	id                  INT IDENTITY (1,1),
	nom                 VARCHAR (255),
	prenom              VARCHAR (255),
	date_de_naissance   DATE,
	email               VARCHAR (255),
	CONSTRAINT client_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: registre
------------------------------------------------------------*/
CREATE TABLE registre(
	id_registre     INT IDENTITY (1,1),
	disponibilite   VARCHAR (255),
	date_emprunt    DATE,
	date_retour     DATE,
	quantite        INT,
	CONSTRAINT registre_PK PRIMARY KEY (id_registre)
);


/*------------------------------------------------------------
-- Table: genre
------------------------------------------------------------*/
CREATE TABLE genre(
	id      INT IDENTITY (1,1),
	genre   VARCHAR (25),
	CONSTRAINT genre_PK PRIMARY KEY (id)
);


/*------------------------------------------------------------
-- Table: associer
------------------------------------------------------------*/
CREATE TABLE associer(
	id         INT,
	id_livre   INT,
	CONSTRAINT associer_PK PRIMARY KEY (id,id_livre)

	,CONSTRAINT associer_genre_FK FOREIGN KEY (id) REFERENCES genre(id)
	,CONSTRAINT associer_livre0_FK FOREIGN KEY (id_livre) REFERENCES livre(id)
);


/*------------------------------------------------------------
-- Table: choisir
------------------------------------------------------------*/
CREATE TABLE choisir(
	id          INT,
	id_client   INT,
	CONSTRAINT choisir_PK PRIMARY KEY (id,id_client)

	,CONSTRAINT choisir_genre_FK FOREIGN KEY (id) REFERENCES genre(id)
	,CONSTRAINT choisir_client0_FK FOREIGN KEY (id_client) REFERENCES client(id)
);


/*------------------------------------------------------------
-- Table: vérifier
------------------------------------------------------------*/
CREATE TABLE verifier(
	id_registre   INT,
	id            INT,
	CONSTRAINT verifier_PK PRIMARY KEY (id_registre,id)

	,CONSTRAINT verifier_registre_FK FOREIGN KEY (id_registre) REFERENCES registre(id_registre)
	,CONSTRAINT verifier_client0_FK FOREIGN KEY (id) REFERENCES client(id)
);



