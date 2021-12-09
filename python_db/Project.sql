create database pokedex;
use pokedex;
/*Made in MySQL*/
/* Creates tables */;
CREATE TABLE User (
	user_id 	varchar(80) PRIMARY KEY,
	team_name 	varchar(80),
    p1			varchar(80) REFERENCES Pokemon(id),
    p2			varchar(80) REFERENCES Pokemon(id),
    p3			varchar(80) REFERENCES Pokemon(id),
    p4			varchar(80) REFERENCES Pokemon(id),
    p5			varchar(80) REFERENCES Pokemon(id),
    p6			varchar(80) REFERENCES Pokemon(id)
);

CREATE TABLE Pokemon (
	id		INT PRIMARY KEY,
    p_Name	varchar(80) NOT NULL,
    p_type	varchar(80) NOT NULL,
    p_type2 varchar(80),
    hp INT,
    sp_attack INT,
    attack INT,
    defense INT,
    sp_defense INT,
    total_stats INT,
    region varchar(80) REFERENCES Game(region),
    m1 varchar(80) REFERENCES Move(m_name),
    m2 varchar(80) REFERENCES Move(m_name),
    m3 varchar(80) REFERENCES Move(m_name),
    m4 varchar(80) REFERENCES Move(m_name)
);


CREATE TABLE Move (
	m_name varchar(80) PRIMARY KEY,
    m_type varchar(80) NOT NULL,
    m_desc varchar(500) NOT NULL,
    m_acc INT ,
    m_pp INT NOT NULL,
    m_power INT 
);



CREATE TABLE Item (
	i_name varchar(80) PRIMARY KEY,
    i_desc varchar(80) NOT NULL,
    i_cost INT
);





CREATE TABLE Game (
	g_name varchar(80) PRIMARY KEY,
    console varchar(80) NOT NULL,
    generation varchar(80) NOT NULL,
    region varchar(80) NOT NULL
);


CREATE TABLE Usable (
	p_id int REFERENCES Pokemon(id),
    m_name varchar(80) REFERENCES Move(m_name)
);

CREATE TABLE Exists_in (
	p_id int REFERENCES Pokemon(id),
    g_name varchar(80) REFERENCES Game(g_name)
);

CREATE TABLE Equipable(
	p_id int REFERENCES Pokemon(id),
    i_name varchar(80) REFERENCES Item(i_name)
);

INSERT INTO Pokemon(id, p_name, p_type, p_type2, region, hp, attack, defense, sp_attack, sp_defense) 
VALUES  (1.0,'Bulbasaur','Grass','Poison','Kanto',45.0,49.0,49.0,65.0,65.0),
    (2.0,'Ivysaur','Grass','Poison','Kanto',60.0,62.0,63.0,80.0,80.0),
    (3.0,'Venusaur','Grass','Poison','Kanto',80.0,82.0,83.0,100.0,100.0),
    (4.0,'Charmander','Fire',NULL,'Kanto',39.0,52.0,43.0,60.0,50.0),
    (5.0,'Charmeleon','Fire',NULL,'Kanto',58.0,64.0,58.0,80.0,65.0),
    (6.0,'Charizard','Fire','Flying','Kanto',78.0,84.0,78.0,109.0,85.0),
    (7.0,'Squirtle','Water',NULL,'Kanto',44.0,48.0,65.0,60.0,54.0),
    (8.0,'Wartortle','Water',NULL,'Kanto',59.0,63.0,80.0,65.0,80.0),
    (9.0,'Blastoise','Water',NULL,'Kanto',79.0,83.0,100.0,85.0,105.0),
    (10.0,'Caterpie','Bug',NULL,'Kanto',45.0,30.0,35.0,20.0,20.0),
    (11.0,'Metapod','Bug',NULL,'Kanto',50.0,20.0,55.0,25.0,25.0),
    (12.0,'Butterfree','Bug','Flying','Kanto',60.0,45.0,50.0,80.0,80.0),
    (13.0,'Weedle','Bug','Poison','Kanto',40.0,35.0,30.0,20.0,20.0),
    (14.0,'Kakuna','Bug','Poison','Kanto',45.0,25.0,50.0,25.0,25.0),
    (15.0,'Beedrill','Bug','Poison','Kanto',65.0,80.0,40.0,40.0,80.0),
    (16.0,'Pidgey','Normal','Flying','Kanto',40.0,45.0,40.0,35.0,35.0),
    (17.0,'Pidgeotto','Normal','Flying','Kanto',63.0,60.0,55.0,50.0,50.0),
    (18.0,'Pidgeot','Normal','Flying','Kanto',83.0,80.0,75.0,70.0,70.0),
    (19.0,'Rattata','Normal',NULL,'Kanto',30.0,56.0,35.0,25.0,35.0),
    (20.0,'Raticate','Normal',NULL,'Kanto',55.0,81.0,60.0,50.0,70.0),
    (21.0,'Spearow','Normal','Flying','Kanto',40.0,60.0,30.0,31.0,31.0),
    (22.0,'Fearow','Normal','Flying','Kanto',65.0,90.0,65.0,61.0,61.0),
    (23.0,'Ekans','Poison',NULL,'Kanto',30.0,60.0,44.0,40.0,54.0),
    (24.0,'Arbok','Poison',NULL,'Kanto',60.0,85.0,69.0,65.0,79.0),
    (25.0,'Pikachu','Electric',NULL,'Kanto',35.0,55.0,30.0,50.0,40.0),
    (26.0,'Raichu','Electric',NULL,'Kanto',60.0,90.0,55.0,90.0,80.0),
    (27.0,'Sandshrew','Ground',NULL,'Kanto',50.0,75.0,85.0,20.0,30.0),
    (28.0,'Sandslash','Ground',NULL,'Kanto',75.0,100.0,110.0,45.0,55.0),
    (29.0,'Nidoran♀','Poison',NULL,'Kanto',55.0,47.0,52.0,40.0,40.0),
    (30.0,'Nidorina','Poison',NULL,'Kanto',70.0,62.0,67.0,55.0,55.0),
    (31.0,'Nidoqueen','Poison','Ground','Kanto',90.0,82.0,87.0,75.0,85.0),
    (32.0,'Nidoran♂','Poison',NULL,'Kanto',46.0,57.0,40.0,40.0,40.0),
    (33.0,'Nidorino','Poison',NULL,'Kanto',61.0,72.0,57.0,55.0,55.0),
    (34.0,'Nidoking','Poison','Ground','Kanto',81.0,92.0,77.0,85.0,75.0),
    (35.0,'Clefairy','Normal',NULL,'Kanto',70.0,45.0,48.0,60.0,65.0),
    (36.0,'Clafable','Normal',NULL,'Kanto',95.0,70.0,73.0,85.0,90.0),
    (37.0,'Vulpix','Fire',NULL,'Kanto',38.0,41.0,40.0,50.0,65.0),
    (38.0,'Ninetales','Fire',NULL,'Kanto',73.0,76.0,75.0,81.0,100.0),
    (39.0,'Jigglypuff','Normal',NULL,'Kanto',115.0,45.0,20.0,45.0,25.0),
    (40.0,'Wigglytuff','Normal',NULL,'Kanto',140.0,70.0,45.0,75.0,50.0),
    (41.0,'Zubat','Poison','Flying','Kanto',40.0,45.0,35.0,30.0,40.0),
    (42.0,'Golbat','Poison','Flying','Kanto',75.0,80.0,70.0,65.0,75.0),
    (43.0,'Oddish','Grass','Poison','Kanto',45.0,50.0,55.0,75.0,65.0),
    (44.0,'Gloom','Grass','Poison','Kanto',60.0,65.0,70.0,85.0,75.0),
    (45.0,'Vileplume','Grass','Poison','Kanto',75.0,80.0,85.0,100.0,90.0),
    (46.0,'Paras','Bug','Grass','Kanto',35.0,70.0,55.0,45.0,55.0),
    (47.0,'Parasect','Bug','Grass','Kanto',60.0,95.0,80.0,60.0,80.0),
    (48.0,'Venonat','Bug','Poison','Kanto',60.0,55.0,50.0,40.0,55.0),
    (49.0,'Venomoth','Bug','Poison','Kanto',70.0,65.0,60.0,90.0,75.0),
    (50.0,'Diglett','Ground',NULL,'Kanto',10.0,55.0,25.0,35.0,45.0),
    (51.0,'Dugtrio','Ground',NULL,'Kanto',35.0,80.0,50.0,50.0,70.0),
    (52.0,'Meowth','Normal',NULL,'Kanto',40.0,45.0,35.0,40.0,40.0),
    (53.0,'Persian','Normal',NULL,'Kanto',65.0,70.0,60.0,65.0,65.0),
    (54.0,'Psyduck','Water',NULL,'Kanto',50.0,52.0,48.0,65.0,50.0),
    (55.0,'Golduck','Water',NULL,'Kanto',80.0,82.0,78.0,95.0,80.0),
    (56.0,'Mankey','Fighting',NULL,'Kanto',40.0,80.0,35.0,35.0,45.0),
    (57.0,'Primeape','Fighting',NULL,'Kanto',65.0,105.0,60.0,60.0,70.0),
    (58.0,'Growlithe','Fire',NULL,'Kanto',55.0,70.0,45.0,70.0,50.0),
    (59.0,'Arcanine','Fire',NULL,'Kanto',90.0,110.0,80.0,100.0,80.0),
    (60.0,'Poliwag','Water',NULL,'Kanto',40.0,50.0,40.0,40.0,40.0),
    (61.0,'Poliwhirl','Water',NULL,'Kanto',65.0,65.0,65.0,50.0,50.0),
    (62.0,'Poliwrath','Water','Fighting','Kanto',90.0,85.0,95.0,70.0,90.0),
    (63.0,'Arba','Psychic',NULL,'Kanto',25.0,20.0,15.0,105.0,55.0),
    (64.0,'Kadabra','Psychic',NULL,'Kanto',40.0,35.0,30.0,120.0,70.0),
    (65.0,'Alakazam','Psychic',NULL,'Kanto',55.0,50.0,45.0,135.0,85.0),
    (66.0,'Machop','Fighting',NULL,'Kanto',70.0,80.0,50.0,35.0,35.0),
    (67.0,'Machoke','Fighting',NULL,'Kanto',80.0,100.0,70.0,50.0,60.0),
    (68.0,'Machamp','Fighting',NULL,'Kanto',90.0,130.0,80.0,65.0,85.0),
    (69.0,'Bellspout','Grass','Poison','Kanto',50.0,75.0,35.0,70.0,30.0),
    (70.0,'Weepinbell','Grass','Poison','Kanto',65.0,90.0,50.0,85.0,45.0),
    (71.0,'Victreebel','Grass','Poison','Kanto',80.0,105.0,65.0,100.0,60.0),
    (72.0,'Tentacool','Water','Poison','Kanto',40.0,40.0,35.0,50.0,100.0),
    (73.0,'Tentacruel','Water','Poison','Kanto',80.0,70.0,65.0,80.0,120.0),
    (74.0,'Geodude','Rock','Ground','Kanto',40.0,80.0,100.0,30.0,30.0),
    (75.0,'Graveler','Rock','Ground','Kanto',55.0,95.0,115.0,45.0,45.0),
    (76.0,'Golem','Rock','Ground','Kanto',80.0,110.0,130.0,55.0,65.0),
    (77.0,'Ponyta','Fire',NULL,'Kanto',50.0,85.0,55.0,65.0,65.0),
    (78.0,'Rapidash','Fire',NULL,'Kanto',65.0,100.0,70.0,80.0,80.0),
    (79.0,'Slowpoke','Water','Psychic','Kanto',90.0,65.0,65.0,40.0,40.0),
    (80.0,'Slowbro','Water','Psychic','Kanto',95.0,75.0,110.0,100.0,80.0),
    (81.0,'Magnemite','Electric','Steel','Kanto',25.0,35.0,70.0,95.0,55.0),
    (82.0,'Magneton','Electric','Steel','Kanto',50.0,60.0,95.0,120.0,70.0),
    (83.0,'Farfetch''d','Normal','Flying','Kanto',52.0,65.0,55.0,58.0,62.0),
    (84.0,'Doduo','Normal','Flying','Kanto',35.0,85.0,45.0,35.0,35.0),
    (85.0,'Dodrio','Normal','Flying','Kanto',60.0,110.0,70.0,60.0,60.0),
    (86.0,'Seel','Water',NULL,'Kanto',65.0,45.0,55.0,45.0,70.0),
    (87.0,'Dewgong','Water','Ice','Kanto',90.0,70.0,80.0,70.0,95.0),
    (88.0,'Grimer','Poison',NULL,'Kanto',80.0,80.0,50.0,40.0,50.0),
    (89.0,'Muk','Poison',NULL,'Kanto',105.0,105.0,75.0,65.0,100.0),
    (90.0,'Shellder','Water',NULL,'Kanto',30.0,65.0,100.0,45.0,25.0),
    (91.0,'Cloyster','Water','Ice','Kanto',50.0,90.0,180.0,85.0,45.0),
    (92.0,'gastly','Ghost','Poison','Kanto',30.0,35.0,30.0,100.0,35.0),
    (93.0,'Haunter','Ghost','Poison','Kanto',45.0,50.0,45.0,115.0,55.0),
    (94.0,'Gengar','Ghost','Poison','Kanto',60.0,65.0,60.0,130.0,75.0),
    (95.0,'Onix','Rock','Ground','Kanto',35.0,45.0,160.0,30.0,45.0),
    (96.0,'Drowzee','Psychic',NULL,'Kanto',60.0,48.0,45.0,43.0,90.0),
    (97.0,'Hypno','Psychic',NULL,'Kanto',85.0,73.0,70.0,73.0,115.0),
    (98.0,'Krabby','Water',NULL,'Kanto',30.0,105.0,90.0,25.0,25.0),
    (99.0,'Kingler','Water',NULL,'Kanto',55.0,130.0,115.0,50.0,50.0),
    (100.0,'Voltorb','Electric',NULL,'Kanto',40.0,30.0,50.0,55.0,55.0),
    (101.0,'Electrode','Electric',NULL,'Kanto',60.0,50.0,70.0,80.0,80.0),
    (102.0,'Exeggcute','Grass','Psychic','Kanto',60.0,40.0,80.0,60.0,45.0),
    (103.0,'Exeggutor','Grass','Psychic','Kanto',95.0,95.0,85.0,125.0,65.0),
    (104.0,'Cubone','Ground',NULL,'Kanto',50.0,50.0,95.0,40.0,50.0),
    (105.0,'Marowak','Ground',NULL,'Kanto',60.0,80.0,110.0,50.0,80.0),
    (106.0,'Hitmonlee','Fighting',NULL,'Kanto',50.0,120.0,53.0,35.0,110.0),
    (107.0,'Hitmonchan','Fighting',NULL,'Kanto',50.0,105.0,79.0,35.0,110.0),
    (108.0,'Lickitung','Normal',NULL,'Kanto',90.0,55.0,75.0,60.0,75.0),
    (109.0,'Koffing','Poison',NULL,'Kanto',40.0,65.0,95.0,60.0,45.0),
    (110.0,'Weezing','Poison',NULL,'Kanto',65.0,90.0,120.0,85.0,70.0),
    (111.0,'Rhyhorn','Ground','Rock','Kanto',80.0,85.0,95.0,30.0,30.0),
    (112.0,'Rhydon','Ground','Rock','Kanto',105.0,130.0,120.0,45.0,45.0),
    (113.0,'Chansey','Normal',NULL,'Kanto',250.0,5.0,5.0,35.0,105.0),
    (114.0,'Tangela','Grass',NULL,'Kanto',65.0,55.0,115.0,100.0,40.0),
    (115.0,'Kangaskhan','Normal',NULL,'Kanto',105.0,95.0,80.0,40.0,80.0),
    (116.0,'Horsea','Water',NULL,'Kanto',30.0,40.0,70.0,70.0,25.0),
    (117.0,'Seadra','Water',NULL,'Kanto',55.0,65.0,95.0,95.0,45.0),
    (118.0,'Goldeen','Water',NULL,'Kanto',45.0,67.0,60.0,35.0,50.0),
    (119.0,'Seaking','Water',NULL,'Kanto',80.0,92.0,65.0,65.0,80.0),
    (120.0,'Staryu','Water',NULL,'Kanto',30.0,45.0,55.0,70.0,55.0),
    (121.0,'Starmie','Water','Psychic','Kanto',60.0,75.0,85.0,100.0,85.0),
    (122.0,'Mr. Mime','Psychic',NULL,'Kanto',40.0,45.0,65.0,100.0,120.0),
    (123.0,'Scyther','Bug','Flying','Kanto',70.0,110.0,80.0,55.0,80.0),
    (124.0,'Jynx','Ice','Psychic','Kanto',65.0,50.0,35.0,115.0,95.0),
    (125.0,'Electabuzz','Electric',NULL,'Kanto',65.0,83.0,57.0,95.0,85.0),
    (126.0,'Magmar','Fire',NULL,'Kanto',65.0,95.0,57.0,100.0,85.0),
    (127.0,'Pinsir','Bug',NULL,'Kanto',65.0,125.0,100.0,55.0,70.0),
    (128.0,'Tauros','Normal',NULL,'Kanto',75.0,100.0,95.0,40.0,70.0),
    (129.0,'Magikarp','Water',NULL,'Kanto',20.0,10.0,55.0,15.0,20.0),
    (130.0,'Gyarados','Water','Flying','Kanto',95.0,125.0,79.0,60.0,100.0),
    (131.0,'Lapras','Water','Ice','Kanto',130.0,85.0,80.0,85.0,95.0),
    (132.0,'Ditto','Normal',NULL,'Kanto',48.0,48.0,48.0,48.0,48.0),
    (133.0,'Eevee','Normal',NULL,'Kanto',55.0,55.0,50.0,45.0,65.0),
    (134.0,'Vaporeon','Water',NULL,'Kanto',130.0,65.0,60.0,110.0,95.0),
    (135.0,'Jolteon','Electric',NULL,'Kanto',65.0,65.0,60.0,110.0,95.0),
    (136.0,'Flareon','Fire',NULL,'Kanto',65.0,130.0,60.0,95.0,110.0),
    (137.0,'Porygon','Normal',NULL,'Kanto',65.0,60.0,70.0,85.0,75.0),
    (138.0,'Omanyte','Rock','Water','Kanto',35.0,40.0,100.0,90.0,55.0),
    (139.0,'Omastar','Rock','Water','Kanto',70.0,60.0,125.0,115.0,70.0),
    (140.0,'Kabuto','Rock','Water','Kanto',30.0,80.0,90.0,55.0,45.0),
    (141.0,'Kabutops','Rock','Water','Kanto',60.0,115.0,105.0,65.0,70.0),
    (142.0,'Aerodactyl','Rock','Flying','Kanto',80.0,105.0,65.0,60.0,75.0),
    (143.0,'Snorlax','Normal',NULL,'Kanto',160.0,110.0,65.0,65.0,110.0),
    (144.0,'Articuno','Ice','Flying','Kanto',90.0,85.0,100.0,95.0,125.0),
    (145.0,'Zapdos','Electric','Flying','Kanto',90.0,90.0,85.0,125.0,90.0),
    (146.0,'Moltres','Fire','Flying','Kanto',90.0,100.0,90.0,125.0,85.0),
    (147.0,'Dratini','Dragon',NULL,'Kanto',41.0,64.0,45.0,50.0,50.0),
    (148.0,'Dragonair','Dragon',NULL,'Kanto',61.0,84.0,65.0,70.0,70.0),
    (149.0,'Dragonite','Dragon','Flying','Kanto',91.0,134.0,95.0,100.0,100.0),
    (150.0,'Mewtwo','Psychic',NULL,'Kanto',106.0,110.0,90.0,154.0,90.0),
    (151.0,'Mew','Psychic',NULL,'Kanto',100.0,100.0,100.0,100.0,100.0);

INSERT INTO Game(g_name, console, generation, region)
VALUES ('Red', ' Gameboy', '1st', 'Kanto'),
	('Blue', ' Gameboy', '1st', 'Kanto'),
    ('Yellow', ' Gameboy', '1st', 'Kanto');

INSERT INTO Move(m_name, m_desc, m_type, m_pp, m_power, m_acc)
VALUES ('Absorb','Restores the user''s HP by 1/2 of the damage inflicted on the target.','Grass',20.0,'20.0',1.0),
    ('Acid','Has a ~10% chance to lower the target''s Defense by 1 stage.','Poison',30.0,'40.0',1.0),
    ('Acid Armor','Raises the user''s Defense by 2 stages.','Poison',40.0,NULL,NULL),
    ('Agility','Raises the user''s Speed by 2 stages.','Psychic',30.0,NULL,NULL),
    ('Amnesia','Raises the user''s Special by 2 stages.','Psychic',20.0,NULL,NULL),
    ('Aurora Beam','Has a ~10% chance to lower the target''s Attack by 1 stage.','Ice',20.0,'65.0',1.0),
    ('Barrage','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Normal',20.0,'15.0',0.85),
    ('Barrier','Raises the user''s Defense by 2 stages.','Psychic',30.0,NULL,NULL),
    ('Bide','The user absorbs all damage for 2-3 turns and then inflicts twice the absorbed damage on its target. This move ignores the target''s type but still cannot hit Ghost-type Pokemon.','Normal',10.0,NULL,1.0),
    ('Bind','The user becomes uncontrollable and attacks for 2-5 consecutive turns the target cannot make attacks of its own during this time, but it may switch out, use items or run away.','Normal',20.0,'15.0',0.75),
    ('Bite','Has a ~10% chance to make the target flinch.','Normal',25.0,'60.0',1.0),
    ('Blizzard','Has a ~10% chance to freeze the target.','Ice',5.0,'120.0',0.9),
    ('Body Slam','Has a ~30% chance to paralyze the target.','Normal',15.0,'85.0',1.0),
    ('Bone Club','Has a ~10% chance to make the target flinch.','Ground',20.0,'65.0',0.85),
    ('Bonemerang','Strikes twice if the first hit breaks the target''s Substitute, the real Pokemon will take damage from the second hit.','Ground',10.0,'50.0',0.9),
    ('Bubble','Has a ~10% chance to lower the target''s Speed by 1 stage.','Water',30.0,'20.0',1.0),
    ('Bubblebeam','Has a ~10% chance to lower the target''s Speed by 1 stage.','Water',20.0,'65.0',1.0),
    ('Clamp','The user becomes uncontrollable and attacks for 2-5 consecutive turns the target cannot make attacks of its own during this time, but it may switch out, use items or run away.','Water',10.0,'35.0',0.75),
    ('Comet Punch','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Normal',15.0,'18.0',0.85),
    ('Confuse Ray','Confuses the target.','Ghost',10.0,NULL,1.0),
    ('Confusion','Has a ~10% chance to confuse the target.','Psychic',25.0,'50.0',1.0),
    ('Constrict','Has a ~10% chance to lower the target''s Speed by 1 stage.','Normal',35.0,'10.0',1.0),
    ('Conversion','The user''s type changes to match the type of one of its four attacks. This move fails if the user cannot change its type under this condition.','Normal',30.0,NULL,NULL),
    ('Counter','Almost always goes last if an opponent strikes with a Normal- or Fighting-type attack before the user''s turn, the user retaliates for twice the damage it had endured.','Fighting',20.0,NULL,1.0),
    ('Crabhammer','Has a high critical hit ratio.','Water',10.0,'90.0',0.85),
    ('Cut','Damages the target.','Normal',30.0,'50.0',0.95),
    ('Defense Curl','Raises the user''s Defense by 1 stage.','Normal',40.0,NULL,NULL),
    ('Dig','On the first turn, the user digs underground, becoming uncontrollable, and evades all attacks. Swift may still hit a Pokemon underground. On the second turn, the user attacks.','Ground',10.0,'100.0',1.0),
    ('Disable','One randomly selected move of the target''s cannot be selected for 1-7 turns. Disable only works on one move at a time. The target does nothing if it is about to use a move that becomes disabled.','Normal',20.0,NULL,0.55),
    ('Dizzy Punch','Damages the target.','Normal',10.0,'70.0',1.0),
    ('Double Kick','Strikes twice if the first hit breaks the target''s Substitute, the real Pokemon will take damage from the second hit.','Fighting',30.0,'30.0',1.0),
    ('Double Team','Raises the user''s Evasion by 1 stage.','Normal',15.0,NULL,NULL),
    ('Double-edge','The user receives 1/4 recoil damage.','Normal',15.0,'100.0',1.0),
    ('Doubleslap','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Normal',10.0,'15.0',0.85),
    ('Dragon Rage','Always deals 40 points of damage.','Dragon',10.0,NULL,1.0),
    ('Dream Eater','Restores the user''s HP by 1/2 of the damage inflicted on the target but only works on a sleeping target.','Psychic',15.0,'100.0',1.0),
    ('Drill Peck','Damages the target.','Flying',20.0,'80.0',1.0),
    ('Earthquake','Damages the target.','Ground',10.0,'100.0',1.0),
    ('Egg Bomb','Damages the target.','Normal',10.0,'100.0',0.75),
    ('Ember','Has a ~10% chance to burn the target.','Fire',25.0,'40.0',1.0),
    ('Explosion','The Defense stat of other Pokemon is halved against this attack, essentially doubling the move''s base power causes the user to faint.','Normal',5.0,'170.0',1.0),
    ('Fire Blast','Has a ~30% chance to burn the target.','Fire',5.0,'120.0',0.85),
    ('Fire Punch','Has a ~10% chance to burn the target.','Fire',15.0,'75.0',1.0),
    ('Fire Spin','The user becomes uncontrollable and attacks for 2-5 consecutive turns the target cannot make attacks of its own during this time, but it may switch out, use items or run away.','Fire',15.0,'15.0',0.7),
    ('Fissure','The target faints doesn''t work on faster or higher-leveled Pokemon.','Ground',5.0,NULL,0.3),
    ('Flamethrower','Has a ~10% chance to burn the target.','Fire',15.0,'95.0',1.0),
    ('Flash','Lowers the target''s Accuracy by 1 stage.','Normal',20.0,NULL,0.7),
    ('Fly','On the first turn, the user flies into the air, becoming uncontrollable, and evades most attacks. Swift may still hit a Pokemon in the air. On the second turn, the user attacks.','Flying',15.0,'70.0',0.95),
    ('Focus Energy','Decreases critical hit ratio in-game, but raises it in Pokemon Stadium.','Normal',30.0,NULL,NULL),
    ('Fury Attack','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Normal',20.0,'15.0',0.85),
    ('Fury Swipes','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Normal',15.0,'10.0',0.8),
    ('Glare','Paralyzes the target. This move works on Ghost-type Pokemon.','Normal',30.0,NULL,0.75),
    ('Growl','Lowers the target''s Attack by 1 stage.','Normal',40.0,NULL,1.0),
    ('Growth','Raises the user''s Special by 1 stage.','Normal',40.0,NULL,NULL),
    ('Guillotine','The target faints doesn''t work on faster or higher-leveled Pokemon.','Normal',5.0,NULL,0.3),
    ('Gust','Damages the target.','Normal',35.0,'40.0',1.0),
    ('Harden','Raises the user''s Defense by 1 stage.','Normal',30.0,NULL,NULL),
    ('Haze','Eliminates any stat modifiers from all active Pokemon. Also removes Leech Seed, Reflect and Light Screen from either Pokemon and cures the opponent of any status conditions (including Toxic). If the user of Haze has Toxic poisoning, it will be downgraded to regular poisoning.','Ice',30.0,NULL,NULL),
    ('Headbutt','Has a ~30% chance to make the target flinch.','Normal',15.0,'70.0',1.0),
    ('Hi Jump Kick','If this attack misses the target, the user receives 1 HP of damage.','Fighting',20.0,'85.0',0.9),
    ('Horn Attack','Damages the target.','Normal',25.0,'65.0',1.0),
    ('Horn Drill','The target faints doesn''t work on faster or higher-leveled Pokemon.','Normal',5.0,NULL,0.3),
    ('Hydro Pump','Damages the target.','Water',5.0,'120.0',0.8),
    ('Hyper Beam','In Stadium, the user becomes uncontrollable during its next turn. Otherwise, the user attacks on turn one but it doesn''t recharge on turn two if it KOs the target, breaks its Substitute or misses entirely.','Normal',5.0,'150.0',0.9),
    ('Hyper Fang','Has a ~10% chance to make the target flinch.','Normal',15.0,'80.0',0.9),
    ('Hypnosis','Puts the target to sleep.','Psychic',20.0,NULL,0.6),
    ('Ice Beam','Has a ~10% chance to freeze the target.','Ice',10.0,'95.0',1.0),
    ('Ice Punch','Has a ~10% chance to freeze the target.','Ice',15.0,'75.0',1.0),
    ('Jump Kick','If this attack misses the target, the user receives 1 HP of damage.','Fighting',20.0,'70.0',0.95),
    ('Karate Chop','Has a high critical hit ratio.','Normal',25.0,'55.0',1.0),
    ('Kinesis','Lowers the target''s Accuracy by 1 stage.','Psychic',15.0,NULL,0.8),
    ('Leech Life','Restores the user''s HP by 1/2 of the damage inflicted on the target.','Bug',15.0,'20.0',1.0),
    ('Leech Seed','The user steals 1/16 of the target''s max HP (or more if used in conjunction with Toxic) until either Pokemon uses Haze or the target is switched out or KO''ed does not work on Grass-type Pokemon, but will work against Pokemon behind Substitutes.','Grass',10.0,NULL,0.9),
    ('Leer','Lowers the target''s Defense by 1 stage.','Normal',30.0,NULL,1.0),
    ('Lick','Has a ~30% chance to paralyze the target. This move fails against Psychic-type Pokemon.','Ghost',30.0,'20.0',1.0),
    ('Light Screen','The user receives 1/2 damage from Special attacks until it switches out or either Pokemon uses Haze.','Psychic',30.0,NULL,NULL),
    ('Lovely Kiss','Puts the target to sleep.','Normal',10.0,NULL,0.75),
    ('Low Kick','Has a ~30% chance to make the target flinch.','Fighting',20.0,'50.0',0.9),
    ('Meditate','Raises the user''s Attack by 1 stage.','Psychic',40.0,NULL,NULL),
    ('Mega Drain','Restores the user''s HP by 1/2 of the damage inflicted on the target.','Grass',10.0,'40.0',1.0),
    ('Mega Kick','Damages the target.','Normal',5.0,'120.0',0.75),
    ('Mega Punch','Damages the target.','Normal',20.0,'80.0',0.85),
    ('Metronome','The user performs a randomly selected move almost any move in the game could be picked. Metronome cannot generate itself, Struggle or any move that the user already knows.','Normal',10.0,NULL,NULL),
    ('Mimic','This move is temporarily replaced by one of the target''s moves after one PP is subtracted to use this move, the replacement move will retain Mimic''s remaining PP. The user can select any of the target''s moves to copy until the end of the battle or until the user switches out. There are no move restrictions on Mimic other than itself and Struggle. However, in a link battle, Mimic will copy one of the target''s attacks randomly.','Normal',10.0,NULL,1.0),
    ('Minimize','Raises the user''s Evasion by 1 stage.','Normal',20.0,NULL,NULL),
    ('Mirror Move','The user performs the last move executed by its target if applicable, an attack''s damage is calculated with the user''s stats, level and type(s). This moves fails if the target has not yet used a move. Mirror Move also cannot copy itself.','Flying',20.0,NULL,NULL),
    ('Mist','Protects the user from negative stat modifiers caused by other Pokemon until it switches out. The user''s Accuracy and Evasion stats are also protected. Moves that cause negative stat modifiers as a secondary effect, such as Psychic, still deal their regular damage.','Ice',30.0,NULL,NULL),
    ('Night Shade','Does damage equal to user''s level. This move hits Normal-type Pokemon.','Ghost',15.0,NULL,1.0),
    ('Pay Day','The player picks up extra money after in-game battles the money received is equal to: [user''s level * 2 * number of times Pay Day is used]. The player does not lose money if the opponent uses Pay Day but the player wins the battle.','Normal',20.0,'40.0',1.0),
    ('Peck','Damages the target.','Flying',35.0,'35.0',1.0),
    ('Petal Dance','The user attacks uncontrollably for 2-3 turns and then gets confused.','Grass',20.0,'70.0',1.0),
    ('Pin Missile','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Bug',20.0,'14.0',0.85),
    ('Poison Gas','Poisons the target.','Poison',40.0,NULL,0.55),
    ('Poison Sting','Has a ~20% chance to poison the target.','Poison',35.0,'15.0',1.0),
    ('Poisonpowder','Poisons the target.','Poison',35.0,NULL,0.75),
    ('Pound','Damages the target.','Normal',35.0,'40.0',1.0),
    ('Psybeam','Has a ~10% chance to confuse the target.','Psychic',20.0,'65.0',1.0),
    ('Psychic','Has a ~30% chance to lower the target''s Special by 1 stage.','Psychic',10.0,'90.0',1.0),
    ('Psywave','Randomly inflicts set damage between a minimum of 1 HP and a maximum of [1.5x the user''s level] HP.','Psychic',15.0,NULL,0.8),
    ('Quick Attack','Usually goes first.','Normal',30.0,'40.0',1.0),
    ('Rage','The user attacks uncontrollably until it faints or its target faints. During this time, the user''s Attack increases by 1 stage for each time it is hit by the target. If this move misses, the user continues to attack but has only a 1/256 chance to land a hit.','Normal',20.0,'20.0',1.0),
    ('Razor Leaf','Has a high critical hit ratio.','Grass',25.0,'55.0',0.95),
    ('Razor Wind','The user prepares on turn one, becoming uncontrollable, and then attacks on turn two.','Normal',10.0,'80.0',0.75),
    ('Recover','Restores 1/2 of the user''s max HP. However, this move fails if the user''s current HP is 511 or 255 HP below its value at full health.','Normal',20.0,NULL,NULL),
    ('Reflect','The user receives 1/2 damage from Physical attacks until it switches out or either Pokemon uses Haze.','Psychic',20.0,NULL,NULL),
    ('Rest','The user is cured of status effects (and confusion), and recovers full HP, but falls asleep for 2 turns (and then uses a third turn to wake up). However, this move fails if the user''s current HP is 511 or 255 HP below its value at full health.','Psychic',10.0,NULL,NULL),
    ('Roar','Escapes from wild battles fails automatically in trainer and link battles.','Normal',20.0,NULL,1.0),
    ('Rock Slide','Damages the target.','Rock',10.0,'75.0',0.9),
    ('Rock Throw','Damages the target.','Rock',15.0,'50.0',0.65),
    ('Rolling Kick','Has a ~30% chance to make the target flinch.','Fighting',15.0,'60.0',0.85),
    ('Sand-Attack','Lowers the target''s Accuracy by 1 stage.','Ground',15.0,NULL,1.0),
    ('Scratch','Damages the target.','Normal',35.0,'40.0',1.0),
    ('Screech','Lowers the target''s Defense by 2 stages.','Normal',10.0,NULL,0.85),
    ('Seismic Toss','Does damage equal to user''s level. Hits Ghost-type Pokemon.','Fighting',20.0,NULL,1.0),
    ('Selfdestruct','The Defense stat of other Pokemon is halved against this attack, essentially doubling the move''s base power causes the user to faint.','Normal',5.0,'130.0',1.0),
    ('Sharpen','Raises the user''s Attack by 1 stage.','Normal',30.0,NULL,NULL),
    ('Sing','Puts the target to sleep.','Normal',15.0,NULL,0.55),
    ('Skull Bash','The user prepares on turn one, becoming uncontrollable, and then attacks on turn two.','Normal',15.0,'100.0',1.0),
    ('Sky Attack','The user prepares on turn one, becoming uncontrollable, and then attacks on turn two.','Flying',5.0,'140.0',0.9),
    ('Slam','Damages the target.','Normal',20.0,'80.0',0.75),
    ('Slash','Has a high critical hit ratio.','Normal',20.0,'70.0',1.0),
    ('Sleep Powder','Puts the target to sleep.','Grass',15.0,NULL,0.75),
    ('Sludge','Has a ~30% chance to poison the target.','Poison',20.0,'65.0',1.0),
    ('Smog','Has a ~30% chance to poison the target.','Poison',20.0,'20.0',1.0),
    ('Smokescreen','Lowers the target''s Accuracy by 1 stage.','Normal',20.0,NULL,1.0),
    ('Softboiled','Restores 1/2 of the user''s max HP. However, this move fails if the user''s current HP is 511 or 255 HP below its value at full health.','Normal',10.0,NULL,NULL),
    ('Solarbeam','The user prepares on turn one, becoming uncontrollable, and then attacks on turn two.','Grass',10.0,'120.0',1.0),
    ('Sonicboom','Always deals 20 points of damage.','Normal',20.0,NULL,0.9),
    ('Spike Cannon','Attacks 2-5 times in one turn if one of these attacks breaks a target''s Substitute, the target will take damage for the rest of the hits. This move has a 3/8 chance to hit twice, a 3/8 chance to hit three times, a 1/8 chance to hit four times and a 1/8 chance to hit five times.','Normal',15.0,'20.0',1.0),
    ('Splash','Doesn''t do anything (but we still love it).','Normal',40.0,NULL,NULL),
    ('Spore','Puts the target to sleep.','Grass',15.0,NULL,1.0),
    ('Stomp','Has a ~30% chance to make the target flinch.','Normal',20.0,'65.0',1.0),
    ('Strength','Damages the target.','Normal',15.0,'80.0',1.0),
    ('String Shot','Lowers the target''s Speed by 1 stage.','Bug',40.0,NULL,0.95),
    ('Struggle','Used automatically when all of the user''s other moves have run out of PP or are otherwise inaccessible. The user receives 1/4 recoil damage. Struggle is classified as a Normal-type move, so it is resisted by Rock-type Pokemon and cannot hit Ghost-type Pokemon at all.','Normal',1.0,'50.0',1.0),
    ('Stun Spore','Paralyzes the target.','Grass',30.0,NULL,0.75),
    ('Submission','The user receives 1/4 recoil damage.','Fighting',20.0,'80.0',0.8),
    ('Substitute','The user takes one-fourth of its maximum HP to create a substitute this move fails if the user does not have enough HP for this. Until the substitute is broken, it receives damage from all attacks made by other Pokemon. In-game, the user can still be inflicted with status effects and stat modifiers from other Pokemon, but this is fixed in Pokemon Stadium. If a Substitute breaks from a hit during a multistrike move such as Fury Attack, the user takes damage from the remaining strikes.','Normal',10.0,NULL,NULL),
    ('Super Fang','This move halves the target''s current HP.','Normal',10.0,NULL,0.9),
    ('Supersonic','Confuses the target.','Normal',20.0,NULL,0.55),
    ('Surf','Damages the target.','Water',15.0,'95.0',1.0),
    ('Swift','Ignores Evasion and Accuracy modifiers and will hit Pokemon even if they are in the middle of Fly or Dig. Has a 1-in-256 chance of missing.','Normal',20.0,'60.0',1.0),
    ('Swords Dance','Raises the user''s Attack by 2 stages.','Normal',30.0,NULL,NULL),
    ('Tackle','Damages the target.','Normal',35.0,'35.0',0.95),
    ('Tail Whip','Lowers the target''s Defense by 1 stage.','Normal',30.0,NULL,1.0),
    ('Take Down','The user receives 1/4 recoil damage.','Normal',20.0,'90.0',0.85),
    ('Teleport','Escapes from wild battles fails automatically in trainer and link battles.','Psychic',20.0,NULL,NULL),
    ('Thrash','The user attacks uncontrollably for 2-3 turns and then gets confused.','Normal',20.0,'90.0',1.0),
    ('Thunder','Has a ~10% chance to paralyze the target.','Electric',10.0,'120.0',0.7),
    ('Thunder Wave','Paralyzes the target.','Electric',20.0,NULL,1.0),
    ('Thunderbolt','Has a ~10% chance to paralyze the target.','Electric',15.0,'95.0',1.0),
    ('Thunderpunch','Has a ~10% chance to paralyze the target.','Electric',15.0,'75.0',1.0),
    ('Thundershock','Has a ~10% chance to paralyze the target.','Electric',30.0,'40.0',1.0),
    ('Toxic','The target is badly poisoned, with the damage caused by poison doubling after each turn. However, Toxic poisoning will revert to normal poisoning if the poisoned Pokemon is switched out or uses Haze. Damage caused by Leech Seed will also increase as Toxic damage increases.','Poison',10.0,NULL,0.85),
    ('Transform','The user morphs into a near-exact copy of the target. Stats, stat modifiers, type, moves and appearance are changed the user''s level and HP remain the same and each copied move receives only 5 PP.','Normal',10.0,NULL,NULL),
    ('Tri Attack','Damages the target.','Normal',10.0,'80.0',1.0),
    ('Twineedle','Strikes twice if the first hit breaks the target''s Substitute, the real Pokemon will take damage from the second hit. Has a ~20% chance to poison the target .','Bug',20.0,'25.0',1.0),
    ('Vicegrip','Damages the target.','Normal',30.0,'55.0',1.0),
    ('Vine Whip','Damages the target.','Grass',10.0,'35.0',1.0),
    ('Water Gun','Damages the target.','Water',25.0,'40.0',1.0),
    ('Waterfall','Damages the target.','Water',15.0,'80.0',1.0),
    ('Whirlwind','Escapes from wild battles fails automatically in trainer and link battles.','Normal',20.0,NULL,1.0),
    ('Wing Attack','Damages the target.','Flying',35.0,'35.0',1.0),
    ('Withdraw','Raises the user''s Defense by 1 stage.','Water',40.0,NULL,NULL),
    ('Wrap','The user becomes uncontrollable and attacks for 2-5 consecutive turns the target cannot make attacks of its own during this time, but it may switch out, use items or run away.','Normal',20.0,'15.0',0.85);

INSERT INTO Item(i_name, i_desc, i_cost)
VALUES ('Antidote','Cure Poison status',100.0),
    ('Awakening','Cure Sleep status',200.0),
    ('Bicycle','Travel at double speed',NULL),
    ('Bike Voucher','Redeem at Cerulean Bike Shop for free bike',NULL),
    ('Burn Heal','Cure Burn status',250.0),
    ('Calcium','Boost Special stat',9800.0),
    ('Carbos','Boost Speed stat',9800.0),
    ('Card Key','Unlock Silph Co. doors',NULL),
    ('Coin','Used to lay slots',NULL),
    ('Coin Case','Holds up to 9,999 Casino coins',NULL),
    ('Dire Hit','Temporarily raises likelihood of Critical Hit in battle',650.0),
    ('Dome Fossil','Used for cloning Kabuto in Cinnabar Island Lab',NULL),
    ('Elixir','Restores 10 PP (all techniques)',NULL),
    ('Escape Rope','Teleport to last visited Pokemon Center',550.0),
    ('Ether','Restore 10 PP (one technique)',NULL),
    ('EXP. All','Automaticall divides up EXP gained in battle to whole party',NULL),
    ('Fire Stone','Use to evolve Growlithe, Vulpix and Eevee',2100.0),
    ('Fresh Water','Restores 50 HP',200.0),
    ('Full Heal','Cures all status changes',600.0),
    ('Full Restore','Cures all status changes and restores all HP',3000.0),
    ('Gold Teeth','Give to Safari Zone Warden for HM 04',NULL),
    ('Good Rod','Fish for medium level Pokemon',NULL),
    ('Great Ball','Capture medium level Pokemon',600.0),
    ('Guard Spec.','Protects temporarily from Special attack',700.0),
    ('Helix Fossil','Used for cloning Omanyte in Cinnabar Island Lab',NULL),
    ('HP Up','Boosts HP Max',9800.0),
    ('Hyper Potion','Recover 200 HP',1500.0),
    ('Ice Heal','Cures Frozen status',250.0),
    ('Iron','Boosts Defense stat',9800.0),
    ('Item Finder','Reveals hidden items',NULL),
    ('Leaf Stone','Used to evolve Gloom, Weepinbell and Exeggcute',2100.0),
    ('Lemonade','Recovers 80 HP',350.0),
    ('Lift Key','Used to unlock elevators in Rocket Hideout (Celadon)',NULL),
    ('Master Ball','Captures any Pokemon (only one exists)',NULL),
    ('Max Elixir','Restores PP to all techniques',NULL),
    ('Max Ether','Restores PP to one technique',NULL),
    ('Max Potion','Recover all HP',2500.0),
    ('Max Repel','Protect from wild Pokemon ambush for 250 steps',700.0),
    ('Max Revive','Recovers fainted Pokemon to full health',NULL),
    ('Moon Stone','Used to evolve Nidorino, Nidorina, Clefairy and Jigglypuff',NULL),
    ('Nugget','Sell for money',NULL),
    ('Oak''s Parcel','Give to Professor Oak in exchange for Pokedex',NULL),
    ('Old Amber','Used for cloning Aerodactyl in Cinnabar Island lab',NULL),
    ('Old Rod','Fish for lowlevel Pokemon',NULL),
    ('Paralyze Heal','Cure Paralyze status',200.0),
    ('Poke Ball','Capture lowlevel Pokemon',200.0),
    ('Poke Doll','Escape from battle. Exchange for TM 31 in Saffron City',1000.0),
    ('Poke Flute','Cures Sleep status and wakes up Snorlax',NULL),
    ('Potion','Recover 20 HP',300.0),
    ('PP Up','Boosts maximum PP',NULL),
    ('Protein','Boosts Attack stat',9800.0),
    ('Rare Candy','Instant level gain',NULL),
    ('Repel','Protect from weak wild Pokemon ambush for 100 steps',350.0),
    ('Revive','Recovers fainted Pokemon to 1/2 health',1500.0),
    ('S. S. Ticket','Entrance ticket to S.S. Anne (Vermilion)',NULL),
    ('Safari Ball','Capture Pokemon in Safari Zone',NULL),
    ('Secret Key','Unlocks Cinnabar Island Gym',NULL),
    ('Silph Scope','Makes ghosts visible (Pokemon Tower)',NULL),
    ('Soda Pop','Recovers 60 HP',300.0),
    ('Super Potion','Recovers 70 HP',700.0),
    ('Super Repel','Protect from wild Pokemon ambush for 200 steps',500.0),
    ('Super Rod','Fish for low to highlevel Pokemon',NULL),
    ('Thunder Stone','Used to evolve Pikachu and Eevee',2100.0),
    ('Town Map','Map of the island. Shows your location',NULL),
    ('Ultra Ball','Capture highlevel Pokemon',1200.0),
    ('Water Stone','Used to evolve Poliwhirl, Shellder, Staryu and Eeve',2100.0),
    ('X Accuracy','Temporarily raise Accuracy in battle',950.0),
    ('X Attack','Temporarily raise Attack in battle',500.0),
    ('X Defend','Temporarily raise Defense in battle',550.0),
    ('X Special','Temporarily raise Special in battle',350.0),
    ('X Speed','Temporarily raise Speed in battle',350.0);

SELECT * FROM Game;
SELECT * FROM Move;
SELECT * FROM Item;

CREATE TRIGGER triggername BEFORE INSERT
ON Pokemon
FOR EACH ROW
SET NEW.total_stats=NEW.hp+NEW.sp_attack+NEW.attack+NEW.defense+NEW.sp_defense;

CREATE TRIGGER triggnername2 BEFORE UPDATE
ON Pokemon
FOR EACH ROW
SET NEW.total_stats=NEW.hp+NEW.sp_attack+NEW.attack+NEW.defense+NEW.sp_defense;




SELECT * FROM User;



