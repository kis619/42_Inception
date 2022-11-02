-- create data base
CREATE DATABASE IF NOT EXISTS WORDPRESS_DB_NAME;

-- create user
CREATE USER IF NOT EXISTS 'WORDPRESS_DB_USER'@'%' IDENTIFIED BY WORDPRESS_DB_PASSWORD;

-- give user all permissions for data base
GRANT ALL ON WORDPRESS_DB_NAME.* to 'WORDPRESS_DB_USER'@'%';

-- refresh permissions
FLUSH PRIVILEGES

-- https://serverok.in/you-must-reset-your-password-using-alter-user
-- mysql generates a temp root password which needs be changed
ALTER USER 'root'@'localhost' IDENTIFIED BY MYSQL_ROOT_PASSWORD