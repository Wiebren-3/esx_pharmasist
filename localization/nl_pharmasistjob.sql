

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_pharmasist', 'Pharmasist', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_pharmasist', 'Aphotheek', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_pharmasist', 'Aphotheek', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('pharmasist', 'Aphotheek')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('pharmasist',0,'recruit','Stagair',200,'{}','{}'),
	('pharmasist',1,'supplier','Leverancier',250,'{}','{}'),
	('pharmasist',2,'store_employe','Winkelmedewerker',250,'{}','{}'),
	('pharmasist',3,'lab_employe','Labmedewerker',300,'{}','{}'),
	('pharmasist',4,'boss','Beheerder',400,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Pijnstiller 1x',3000,0),
	('Tourniquet 1x',4500,0),
	('Verbandrol 1x',2500,0),
	('Defibrilator 1x',15000,0),
	('Vitaminedrinken 1x', 300,0)
