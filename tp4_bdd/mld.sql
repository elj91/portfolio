#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Rayon
#------------------------------------------------------------

CREATE TABLE Rayon(
        Coderayon     Varchar (50) NOT NULL ,
        Intitulerayon Varchar (50) NOT NULL
	,CONSTRAINT Rayon_PK PRIMARY KEY (Coderayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteur
#------------------------------------------------------------

CREATE TABLE Auteur(
        CodeAut   Varchar (50) NOT NULL ,
        NomAut    Varchar (50) NOT NULL ,
        PrenomAut Varchar (50) NOT NULL
	,CONSTRAINT Auteur_PK PRIMARY KEY (CodeAut)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mots
#------------------------------------------------------------

CREATE TABLE Mots(
        CodeMot Varchar (50) NOT NULL ,
        Mot     Varchar (50) NOT NULL
	,CONSTRAINT Mots_PK PRIMARY KEY (CodeMot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ouvrage
#------------------------------------------------------------

CREATE TABLE Ouvrage(
        CodeOuvrage  Varchar (50) NOT NULL ,
        TitreOuvrage Varchar (50) NOT NULL ,
        Coderayon    Varchar (50) NOT NULL
	,CONSTRAINT Ouvrage_PK PRIMARY KEY (CodeOuvrage)

	,CONSTRAINT Ouvrage_Rayon_FK FOREIGN KEY (Coderayon) REFERENCES Rayon(Coderayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adherents
#------------------------------------------------------------

CREATE TABLE Adherents(
        CodeAdh    Varchar (5) NOT NULL ,
        NomAdh     Varchar (50) NOT NULL ,
        PrenomAdh  Varchar (50) NOT NULL ,
        AdresseAdh Varchar (50) NOT NULL
	,CONSTRAINT Adherents_PK PRIMARY KEY (CodeAdh)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteur de 
#------------------------------------------------------------

CREATE TABLE Auteur_de(
        CodeOuvrage Varchar (50) NOT NULL ,
        CodeAut     Varchar (50) NOT NULL
	,CONSTRAINT Auteur_de_PK PRIMARY KEY (CodeOuvrage,CodeAut)

	,CONSTRAINT Auteur_de_Ouvrage_FK FOREIGN KEY (CodeOuvrage) REFERENCES Ouvrage(CodeOuvrage)
	,CONSTRAINT Auteur_de_Auteur0_FK FOREIGN KEY (CodeAut) REFERENCES Auteur(CodeAut)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Indexe
#------------------------------------------------------------

CREATE TABLE Indexe(
        CodeOuvrage Varchar (50) NOT NULL ,
        CodeMot     Varchar (50) NOT NULL
	,CONSTRAINT Indexe_PK PRIMARY KEY (CodeOuvrage,CodeMot)

	,CONSTRAINT Indexe_Ouvrage_FK FOREIGN KEY (CodeOuvrage) REFERENCES Ouvrage(CodeOuvrage)
	,CONSTRAINT Indexe_Mots0_FK FOREIGN KEY (CodeMot) REFERENCES Mots(CodeMot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Emprunt
#------------------------------------------------------------

CREATE TABLE Emprunt(
        CodeAdh     Varchar (5) NOT NULL ,
        CodeOuvrage Varchar (50) NOT NULL ,
        DateEmprunt Date NOT NULL
	,CONSTRAINT Emprunt_PK PRIMARY KEY (CodeAdh,CodeOuvrage)

	,CONSTRAINT Emprunt_Adherents_FK FOREIGN KEY (CodeAdh) REFERENCES Adherents(CodeAdh)
	,CONSTRAINT Emprunt_Ouvrage0_FK FOREIGN KEY (CodeOuvrage) REFERENCES Ouvrage(CodeOuvrage)
)ENGINE=InnoDB;

