CREATE TABLE zoo_1 (
    id INT PRIMARY KEY,
    animal VARCHAR (100) NOT NULL
);

CREATE TABLE zoo_2 (
    id INT PRIMARY KEY,
    animal VARCHAR (100) NOT NULL
);

INSERT INTO zoo_1(id, animal)
VALUES
    (1, 'Lion'),
    (2, 'Tiger'),
    (3, 'Wolf'),
    (4, 'Fox');
    
INSERT INTO zoo_2(id, animal)
VALUES
    (1, 'Tiger'),
    (2, 'Lion'),
    (3, 'Rhino'),
    (4, 'Panther');
    
    select * from zoo_1
    select * from zoo_2
    
    
    SELECT
    zoo_1.id id_a,
    zoo_1.animal animal_a,
    zoo_2.id id_b,
    zoo_2.animal animal_b
FROM
    zoo_1 
INNER JOIN zoo_2 ON zoo_1.animal = zoo_2.animal;


SELECT
    zoo_1.id,
    zoo_1.animal,
    zoo_2.id,
    zoo_2.animal
FROM
    zoo_1
LEFT JOIN zoo_2 ON zoo_1.animal = zoo_2.animal;

SELECT
    zoo_1.id,
    zoo_1.animal,
    zoo_2.id,
    zoo_2.animal
FROM
    zoo_1
RIGHT JOIN zoo_2 ON zoo_1.animal = zoo_2.animal;


SELECT
    zoo_1.id,
    zoo_1.animal,
    zoo_2.id,
    zoo_2.animal
FROM
    zoo_1
FULL JOIN zoo_2 ON zoo_1.animal = zoo_2.animal;


1)Get the number of halls in each block with a property that includes the string 'projector'
select block,count(*) as num_halls 
from hall_details
where property @> Array['Mike']
group by block
select * from hall_details
2)Get the number of halls in each block that were created on or after January 1st, 2022
select block,count(*) as num_halls
from hall_details
where created_on>='2022-01-01'::date
group by block
3)Get the number of halls created in the last 30 days

select current_date-interval '30 days'

select count(*) as num_halls
from hall_details
where created_on>=current_date-interval '30 days'

4)Get the number of halls created in the current year

select count(*) as num_halls
from hall_details
where date_part('year',created_on)=date_part('year',current_date)
select * from hall_details
5)Get the total capacity of halls created in the last quarter
select sum(total_capacity) as total_capacity
from hall_details
where created_on<=date_trunc('quarter',current_date)+interval '1 month' - interval '1 day'

6)Get the number of halls in each block with a column capacity greater than or equal to 30:
select block,count(*) as num_halls
from hall_details
where columncapacity>=30
group by block


select * from hall_details

Create a table called employees with the following columns:
id: integer, primary key, auto-incrementing
name: string, not null
age: integer, not null
salary: decimal(10,2), not null
hire_date: date, not null

Insert some sample data into the employees table.

Write a query to find the average salary of employees hired in the last year.

Write a query to find the total number of employees hired in the last month.

Write a query to find the names of employees who are older than 40 and earn more than $50,000.

Write a query to find the total number of employees who were hired in each year.

Write a query to find the top 5 highest-paid employees.