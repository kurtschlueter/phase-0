# Release 2: One to One Schema

![Image of One to One Schema](https://raw.githubusercontent.com/kurtschlueter/phase-0/master/week-8/onetooneschema.png)

Explain why this relationship is a one-to-one to the best of your ability.

This is a one to one relationship because every person is unique and every social security number is unique. Only one person can have a certain ssn and only a certain ssn can respresent a single person. One to one. I guess I am not sure why someone would ever want this. It seems easier to just put a ssn as a field in the original table.

# Release 3/4: Many to Many Schema

![Image of Many to Many Schema](https://raw.githubusercontent.com/kurtschlueter/phase-0/master/week-8/manytomanyschema.png)

# Release 6: Reflect

What is a one-to-one database?

"In a one-to-one relationship, each row in one database table is linked to 1 and only 1 other row in another table. In a one-to-one relationship between Table A and Table B, each row in Table A is linked to another row in Table B. The number of rows in Table A must equal the number of rows in Table B."
- databaseprimer.com

When would you use a one-to-one database? (Think generally, not in terms of the example you created).

If a field is rarely used, it might make sense to separate it so that performance can increase. From what I have read, it is all about usage when it comes to one to one. Otherwise, you would just add another field to the original table.

What is a many-to-many database?

"In a many-to-many relationship, one or more rows in a table can be related to 0, 1 or many rows in another table. In a many-to-many relationship between Table A and Table B, each row in Table A is linked to 0, 1 or many rows in Table B and vice versa. A 3rd table called a mapping table is required in order to implement such a relationship."
- databaseprimer.com

When would you use a many-to-many database? (Think generally, not in terms of the example you created).

There are so many examples of when this could be used. It is the relationship between two entities. I like the authors and books example. An author can have many books and a book can be written by several authors.

What is confusing about database schemas? What makes sense?

I have not really wrapped my head around all of this yet. I need tangible practice. I don't know if I will ever use a one to one relationship.