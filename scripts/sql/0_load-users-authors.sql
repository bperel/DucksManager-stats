LOAD DATA LOW_PRIORITY LOCAL INFILE 'export/auteurs_pseudos_simple.csv'
REPLACE
INTO TABLE dm_stats_new.auteurs_pseudos_simple
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' ESCAPED BY '\"' LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ID_User, NomAuteurAbrege, Notation);

SHOW WARNINGS;