--1 create table
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    type VARCHAR(50),
    age INTEGER
);



INSERT INTO animals ( name, type, age ) 
 VALUES ('Leo', 'lion', 12),
 ('Jerry', 'mouse', 4),
 ('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
 ('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
'Flounder', 'fish', 8);