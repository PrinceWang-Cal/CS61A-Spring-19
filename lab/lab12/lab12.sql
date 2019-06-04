.read sp19data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT seven, animal FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest>2 ORDER BY smallest LIMIT 20;

-- Q4
CREATE TABLE matchmaker AS
  SELECT a.animal, a.song, a.color, b.color FROM students AS a, students AS b WHERE a.time < b.time AND a.animal = b.animal AND a.color = b.color AND a.name > b.name;
