# Release 5

1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7;
6. SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population > 1000000 AND population < 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

10. select regions.region_name, states.state_name FROM regions INNER JOIN states ON regions.id = states.region_id;

10 tests:
SELECT regions.region_name, states.state_name FROM regions, states;
SELECT regions.region_name, states.state_name FROM regions, states; WHERE states.id = regions.id;
select regions.region_name, states.state_name FROM regions INNER JOIN states ON regions.id = states.region_id;

# Release 6

Here is my schema design. Pretty simple.
![Image of Schema](https://raw.githubusercontent.com/kurtschlueter/phase-0/master/week-8/database_intro/schemaTest.png)

# Release 7

What are databases for?

Databases are all about storing and manipulating data as efficently as possible. Arrays and hashes are ok for small stuff. The more information needing to be stored, the more versatile the storage has to be.

What is a one-to-many relationship?

When a record in one table can reference several records in another table. If an author in an author table has written several books in a books table.

What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is unique and creates indices for the inputs.
A foreign key is linked to a primary key in the initial table.

How can you select information out of a SQL database? What are some general guidelines for that?

SELECT.