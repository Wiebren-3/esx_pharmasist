

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_pharmasist', 'Apotheker', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_pharmasist', 'Apotheker', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_pharmasist', 'Apotheker', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('pharmasist', 'Apotheker')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('pharmasist',0,'recruit','Rekrutieren',200,'{}','{}'),
	('pharmasist',1,'supplier','Anbieter',250,'{}','{}'),
	('pharmasist',2,'store_employe','Verkäufer',250,'{}','{}'),
	('pharmasist',3,'lab_employe','Labormitarbeiter',300,'{}','{}'),
	('pharmasist',4,'boss','Chef',400,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Schmerzmittel 1x',3000,0),
	('Tourniquet 1x',4500,0),
	('Verbandrolle 1x',2500,0),
	('Defibrillator 1x',15000,0),
	('Vitamingetränk 1x', 300,0)
