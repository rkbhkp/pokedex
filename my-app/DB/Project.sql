create database pokedex;
use pokedex;
/*Made in MySQL*/
/* Creates tables */
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
    region varchar(80) REFERENCES Game(region),
    m1 varchar(80) REFERENCES Move(m_name),
    m2 varchar(80) REFERENCES Move(m_name),
    m3 varchar(80) REFERENCES Move(m_name),
    m4 varchar(80) REFERENCES Move(m_name)
);


CREATE TABLE Move (
	m_name varchar(80) PRIMARY KEY,
    m_type varchar(80) NOT NULL,
    m_desc varchar(80) NOT NULL,
    m_class varchar(80) NOT NULL,
    m_acc INT NOT NULL,
    m_pp INT NOT NULL,
    m_power INT NOT NULL
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

SELECT * FROM Pokemon;
SELECT * FROM Game;
