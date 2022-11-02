-- -- create data base
-- CREATE DATABASE IF NOT EXISTS WORDPRESS_DB_NAME;

-- -- create user
-- CREATE USER IF NOT EXISTS 'WORDPRESS_DB_USER'@'%' IDENTIFIED BY WORDPRESS_DB_PASSWORD;

-- -- give user all permissions for data base
-- GRANT ALL ON WORDPRESS_DB_NAME.* to 'WORDPRESS_DB_USER'@'%';

-- -- refresh permissions
-- FLUSH PRIVILEGES

-- -- https://serverok.in/you-must-reset-your-password-using-alter-user
-- -- mysql generates a temp root password which needs be changed
-- ALTER USER 'root'@'localhost' IDENTIFIED BY MYSQL_ROOT_PASSWORD

USE mysql;

CREATE USER IF NOT EXISTS 'WORDPRESS_DB_USER'@'%' IDENTIFIED BY 'WORDPRESS_DB_PASSWORD';
CREATE DATABASE IF NOT EXISTS WORDPRESS_DB_NAME;
GRANT ALL PRIVILEGES ON WORDPRESS_DB_NAME.* TO 'WORDPRESS_DB_USER'@'%';

FLUSH PRIVILEGES;

DELETE FROM mysql.user WHERE User='';

DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

ALTER USER 'root'@'localhost' IDENTIFIED BY 'MYSQL_ROOT_PASSWORD';

FLUSH PRIVILEGES;