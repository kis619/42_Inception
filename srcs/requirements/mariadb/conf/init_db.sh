chmod -R 777

chown -R mysql:root /var/run/mysql
exec mysqld --user=mysql --init-file=/initfile.sql