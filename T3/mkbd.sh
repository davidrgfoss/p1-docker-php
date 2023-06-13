#!/bin/sh

 # Descarga wait-for-it.sh
wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
chmod +x wait-for-it.sh

# Espera hasta que MariaDB esté lista para aceptar conexiones.
./wait-for-it.sh $host_database:3306 --timeout=30 --strict -- echo "MariaDB ok"

mysql -u $user_bookmedik --password=$pass_bookmedik -h $host_database $db_name < /usr/share/nginx/html/schema.sql

nginx -g "daemon off;"
