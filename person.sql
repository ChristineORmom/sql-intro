--1 create table
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    height_in INTEGER,
    city VARCHAR(50),
    favorite_color VARCHAR(50)
);

--2 insert people
INSERT INTO person (name, age, height_in, city, favorite_color)
VALUES 
('Bob', 50, 73, 'Portland', 'Red'),
('Mary', 39, 63, 'Portland', 'Pink'),
('Rick', 27, 75, 'Beaverton', 'Blue'),
('Jane', 24, 67, 'Aloha', 'Purple'),
('Sam', 21, 77, 'Aloha', 'Blue');

--3 sort tallest to shortest
SELECT * FROM person ORDER BY height_in DESC;

--4 sort shortest to tallest
SELECT * FROM person ORDER BY height_in ASC;

--5 sort from oldest to youngest
SELECT * FROM person ORDER BY age DESC;

--6 select all people older than 20
SELECT * FROM person WHERE age > 20;

--7 select people who are exactly 18
SELECT * FROM person WHERE age = 18; 
--non of my people are 18.

--8 all people that are under 20 and over 30
SELECT * FROM person WHERE age <20 OR age >30;
--no people are under 20. but bob and mary are older than 30. 

--9 select all that are (not equal) not 27
SELECT * FROM person WHERE age != 27;
--lists everyone but rick. Rick is 27.

--10 select all who didn't pick red as favorite color
SELECT * FROM person WHERE favorite_color != 'Red';
--lists everyone but bob. Bob chose red.

--11 all who do not like red or blue
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
--lists jane and mary

--12 select all who chose orange or green
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';
--non of my people chose these colors

--13 select all who did chose orange, green or blue (use IN)
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

--14 select all who chose yellow or purple (use IN)
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple')
--non of my people chose yellow. Jane chose purple