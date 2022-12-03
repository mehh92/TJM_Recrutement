drop database if exists tjm;

create database tjm;

use tjm;

create table utilisateur (
	id_user int(5) auto_increment,
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role enum ('candidat', 'client', 'employe', 'vendeur', 'recruteur', 'mecanicien'),
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table employe (
	id_user int(5),
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role varchar(30) default 'employe',
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table client (
	id_user int(5),
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role varchar(30) default 'client',
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table candidat(
	id_user int(5),
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role varchar(30) default 'candidat',
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table mecanicien (
	id_user int(5),
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role varchar(30) default 'mecanicien',
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table vendeur (
	id_user int(5),
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role varchar(30) default 'vendeur',
	PRIMARY KEY (id_user)
)
ENGINE=innodb DEFAULT CHARSET=latin1;

create table recruteur (
	id_user int(5),
	nom varchar(10),
	prenom varchar(10),
	email varchar(30),
	tel varchar(30),
	mdp varchar(30),
	role varchar(30) default 'recruteur',
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
	tel varchar(30),
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


/*VIEWS*/

create or replace view VuelesCandidatures as (
select c.id_candidature, o.id_offre, o.titre, o.lieux, o.contrat,
c.nom, c.prenom, c.email, c.tel, c.date_candidature, c.experience,
c.diplome, c.message, c.id_user
from offre o, candidature c
where o.id_offre = c.id_offre
);

/*TRIGGERS*/

drop trigger if exists InsertUtilisateurToCandidat;
delimiter //
CREATE TRIGGER InsertUtilisateurToCandidat
 after insert on utilisateur
 for each row
 begin
 if (new.role = 'candidat')
    then
        insert into candidat (id_user, nom, prenom, email, tel, mdp, role) values (new.id_user, new.nom, new.prenom, new.email, new.tel, new.mdp, new.role);
    end if;
 END //
Delimiter ;

