INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_hookah', 'hookah', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_hookah', 'hookah', 1),
  ('society_hookah_fridge', 'hookah (fridge)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
  ('society_hookah', 'hookah', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('hookah', 'Hookah Lounge')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('hookah',0,'worker','Worker',200,'{}','{}'),
  ('hookah',1,'cashier','Cashier',300,'{}','{}'),
  ('hookah',2,'chief','Manager',400,'{}','{}'),
  ('hookah',3,'boss','Owner',500,'{}','{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES
  ('cocacola', 'Coca Cola', 20),
  ('fanta', 'Fanta', 20),
  ('sprite', 'Sprite', 20),
  ('soda', 'Soda', 20),
  ('water', 'Water', 20),
  ('fistikia', 'Φυστίκια', 20),
  ('clubsandwich', 'Club Sandwich', 20),
  ('sandwich', 'Sandwich', 20),
  ('croissant', 'Κρουασάν', 20)
;