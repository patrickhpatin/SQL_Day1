-- Create new table from CSV
drop table if exists wordassociation;
CREATE TABLE wordassociation
(
	author int NOT NULL,
	word1 varchar(250), 
	word2 varchar(250), 
	"source" varchar(2)
);

COPY 
	wordassociation (author, word1, word2, "source")
FROM 'D:\BootCamp\Working\DataViz-Content\09-SQL\1\Activities\07-Stu_Hide_and_Seek\Resources\WordAssociation_AC.csv',
--FROM 'D:\BootCamp\Working\DataViz-Content\09-SQL\1\Activities\07-Stu_Hide_and_Seek\Resources\WordAssociation_BC.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM wordassociation
--WHERE word1 = 'stone'
--WHERE author BETWEEN 1 AND 10
--WHERE word1 LIKE '%pie%'
--	OR word2 LIKE '%pie%'
WHERE "source" = 'BC'
	AND author BETWEEN 333 AND 335