SELECT *
FROM `paragraphs`
Where id = 1337;

EXPLAIN
SELECT *
FROM `paragraphs`
Where id = 1337;

SELECT *
FROM `words`
Where `word` = 'kissed';

EXPLAIN
SELECT *
FROM `words`
Where `word` = 'kissed';

INSERT
INTO 'words'
('word')
VALUES 
('February');

SELECT *
FROM `paragraphs`
WHERE `text` LIKE '%Edmond Dantès%';

--Explain: how fast

SELECT *,
    MATCH (`text`) AGAINST ('Edmond Dantès')
FROM `paragraphs`
WHERE MATCH (`text`) AGAINST ('Edmond Dantès');

SELECT *,
    MATCH (`text`) AGAINST ('Edmond Dantès')
FROM `paragraphs`
WHERE MATCH (`text`) AGAINST ('"Edmond Dantès"');

SELECT *,
    MATCH (`text`) AGAINST ('Edmond Dantès')
FROM `paragraphs`
WHERE MATCH (`text`) AGAINST ('+Edmond +Dantès' IN BOOLEAN MODE)



