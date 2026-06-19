USE dummy;

CREATE TABLE depart(
	department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
    );
SELECT * FROM depart;

INSERT INTO depart (department_id,department_name)
VALUES	(1, 'CSE'),
		(2, 'Mech'),
        (3, 'CSE'),
        (4, 'EEE'),
        (5, 'Mech');

SELECT DISTINCT department_name FROM depart;

SELECT DISTINCT department_name 
FROM depart
WHERE department_id >2;