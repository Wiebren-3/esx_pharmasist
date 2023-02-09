

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_pharmasist', 'Pharmasist', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_pharmasist', 'Pharmasist', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_pharmasist', 'Pharmasist', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('pharmasist', 'Pharmasist')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('pharmasist',0,'recruit','Stagair',20,'{}','{}'),
	('pharmasist',1,'supplier','Leverancier',40,'{}','{}'),
	('pharmasist',2,'store_employe','Winkelmedewerker',60,'{}','{}'),
	('pharmasist',3,'lab_employe','Labmedewerker',85,'{}','{}'),
	('pharmasist',4,'boss','Beheerder',100,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Usage abusif du klaxon',30,0),
	('Franchir une ligne continue',40,0),
	('Circulation à contresens',250,0),
	('Demi-tour non autorisé',250,0),
