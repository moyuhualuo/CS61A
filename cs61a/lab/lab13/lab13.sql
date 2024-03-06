.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet
  FROM students
  WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song
  FROM students
  WHERE color = 'blue' AND pet = 'dog';


CREATE TABLE smallest_int_having AS
  SELECT time, smallest
  FROM students
  GROUP BY smallest
  HAVING COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students as a, students as b
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;

CREATE TABLE sevens AS
  SELECT a.seven AS seven
  FROM students AS a
  JOIN numbers as b on a.smallest <= 7 AND  b.'7' = 'True' AND a.time = b.time;

