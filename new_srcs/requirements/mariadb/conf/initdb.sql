-- create data base
CREATE DATABASE IF NOT EXISTS wordpress;

-- https://serverok.in/you-must-reset-your-password-using-alter-user
-- mysql generates a temp root password which needs be changed
ALTER USER 'root'@'localhost' IDENTIFIED BY '4269';

-- FLUSH PRIVILEGES;

-- create user with password
CREATE USER IF NOT EXISTS 'voldemort'@'localhost' IDENTIFIED BY '4269';

-- give user all permissions for data base
GRANT ALL PRIVILEGES ON wordpress.* TO 'voldemort'@'%' IDENTIFIED BY '4269' with grant option;
FLUSH PRIVILEGES;
