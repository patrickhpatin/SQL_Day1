--DROP TABLE cities;

CREATE TABLE cities (
    city VARCHAR(30) NOT NULL, 
    "state" VARCHAR(30) NOT NULL,
    population INT DEFAULT 0
);

INSERT INTO cities (city, "state", population)
VALUES ('Alameda', 'California', 79177),
  ('Mesa', 'Arizona', 496401),
  ('Boerne', 'Texas', 16056),
  ('Anaheim', 'California', 352497),
  ('Tuscon', 'Arizona', 535677),
  ('Garland', 'Texas', 238002);
  
SELECT * FROM cities
--WHERE "state" = 'Arizona';
WHERE population < 100000
AND "state" = 'California';