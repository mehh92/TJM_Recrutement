drop database if exists tjm;

create database tjm;

use tjm;

create table utilisateur (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	mdp varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table employe (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table client (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table candidat(
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	mdp varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table mecanicien (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	mdp varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table vendeur (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	mdp varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table recruteur (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	mdp varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table offre(
	id_offre int(5) auto_increment,
	titre varchar(30),
	lieux varchar(30),
	secteur varchar(30),
	salaire varchar(30),
	contrat varchar(30),
	date_offre varchar(30),
	description_personne longtext,
	description_travail longtext,
	description_mission longtext,
	PRIMARY KEY (id_offre)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table candidature (
	id_candidature int(5) auto_increment,
	nom varchar(20),
	prenom varchar(20),
	email varchar(30),
	date_candidature varchar(30),
	experience int(2),
	diplome varchar(30),
	message longtext,
	id_user int(5),
	id_offre int(5),
	PRIMARY KEY (id_candidature),
	FOREIGN KEY (id_user) references candidat (id_user),
	FOREIGN KEY (id_offre) references offre (id_offre)
	on update cascade
	on delete cascade
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table rdv(
	id_cv int(5) auto_increment,
	PRIMARY KEY (id_cv)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table paye(
	id_paye int(5) auto_increment,
	PRIMARY KEY (id_paye)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table absence(
	id_absence int(5) auto_increment,
	PRIMARY KEY (id_absence)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table planning(
	id_planning int(5) auto_increment,
	PRIMARY KEY (id_planning)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table conge(
	id_conge int(5) auto_increment,
	PRIMARY KEY (id_conge)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table piece(
	id_piece int(5) auto_increment,
	PRIMARY KEY (id_piece)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table voiture(
	id_voiture int(5) auto_increment,
	PRIMARY KEY (id_voiture)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table intervention(
	id_intervention int(5) auto_increment,
	PRIMARY KEY (id_intervention)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

