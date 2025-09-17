Connet to `psql` and can run the following queries to test the database:

```sql
-- check connection
\c
```
```sql
-- connec to a specific database
\c database_name
```
```sql
-- list all databases
\l
```
```sql
-- list all tables
\dt
```
```sql
-- describe a table
\d table_name
```
```sql
-- add a user table
CREATE TABLE users (id SERIAL PRIMARY KEY,
                    name VARCHAR(100) NOT NULL,
                    email VARCHAR(100) UNIQUE NOT NULL,
                    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
```sql
-- add an entry
INSERT INTO users (name, email) VALUES('John Doe', 'john@example.com'),
                                      ('Jane Smith', 'jane@example.com'),
                                      ('Bob Wilson', 'bob@example.com');
```
```sql
-- query the table
SELECT * FROM users;
```
```sql
-- exit psql
\q
```