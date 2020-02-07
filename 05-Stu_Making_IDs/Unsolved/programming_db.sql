--DROP TABLE IF EXISTS programming_languages;

CREATE TABLE programming_languages (
    "id" SERIAL PRIMARY KEY, 
    "language" VARCHAR(20) NOT NULL,
    rating INT DEFAULT 0
);

INSERT INTO programming_languages ("language", rating)
VALUES ('HTML', 95),
  ('JS', 99),
  ('JQuery', 98),
  ('MySQL', 70),
  ('MySQL', 70);
  
SELECT * FROM programming_languages
ORDER BY "id" DESC;
--WHERE "language" = 'MySQL';

DELETE FROM programming_languages
WHERE "id" = 5;

INSERT INTO programming_languages ("language", rating)
VALUES ('VBA', 50),
	('C#', 90),
	('VB.NET', 90);
	
UPDATE programming_languages
--SET "language" = 'JavaScript'
--WHERE "language" = 'JS';
SET rating = 90
WHERE "language" = 'HTML';

ALTER TABLE programming_languages 
ADD mastered BOOLEAN DEFAULT TRUE;






