INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_Pharmacien', 'Pharmacien', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_Pharmacien', 'Pharmacien', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_Pharmacien', 'Pharmacien', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('Pharmacien', 'Pharmacien')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('Pharmacien',0,'recruit','Stagiaire',200,'{}','{}'),
	('Pharmacien',1,'supplier','Fournisseur',250,'{}','{}'),
	('Pharmacien',2,'store_employe','Vendeur',250,'{}','{}'),
	('Pharmacien',3,'lab_employe','Ouvrier de laboratoire',300,'{}','{}'),
	('Pharmacien',4,'boss','Directeur',400,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`category` int DEFAULT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `fine_types` (label, amount, category) VALUES
	('Anti douleur 1x',3000,0),
	('Tourniquet 1x',4500,0),
	('Rouleau de bandage 1x',2500,0),
	('Défibrillateur 1x',15000,0),
	('Boisson vitaminée 1x', 300,0)
