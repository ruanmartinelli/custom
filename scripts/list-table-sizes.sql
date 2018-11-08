-- List the size in MB of all tables in a MySQL database.
-- Source: https://stackoverflow.com/a/9620273/3496534

SELECT 
     table_schema as `Database`, 
     table_name AS `Table`, 
     round(((data_length + index_length) / 1024 / 1024), 2) `Size in MB` 
FROM information_schema.TABLES 
ORDER BY (data_length + index_length) DESC;
