

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
	('pharmasist',0,'recruit','Recruit',200,'{}','{}'),
	('pharmasist',1,'supplier','Supplier',250,'{}','{}'),
	('pharmasist',2,'store_employe','Store Employe',250,'{}','{}'),
	('pharmasist',3,'lab_employe','Lab Employe ',300,'{}','{}'),
	('pharmasist',4,'boss','Manager',400,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Painkiller 1x',3000,0),
	('Tourniquet 1x',4500,0),
	('Bandage 1x',2500,0),
	('Defibrilator 1x',15000,0),
	('Vitmindrink 1x', 300,0)
