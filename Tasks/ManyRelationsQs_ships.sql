use ships

SELECT NAME
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
WHERE DISPLACEMENT > 50000

SELECT ships.NAME, CLASSES.DISPLACEMENT, CLASSES.NUMGUNS
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE OUTCOMES.BATTLE = 'Guadalcanal'

SELECT DISTINCT CLASSES.COUNTRY
FROM CLASSES, CLASSES as CLASSES2
WHERE CLASSES.COUNTRY = CLASSES2.COUNTRY AND CLASSES.TYPE <> CLASSES2.TYPE

SELECT OUTCOMES.SHIP
FROM OUTCOMES, OUTCOMES AS OUTCOMES2
WHERE OUTCOMES.RESULT = 'damaged' AND OUTCOMES.SHIP = OUTCOMES2.SHIP AND OUTCOMES.BATTLE <> OUTCOMES2.BATTLE  

