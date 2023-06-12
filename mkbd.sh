#!/usr/bin/env bash

mysql -u $user_bookmedik --password=$password_bookmedik -h $password_bookmedik $namebd_bookmedik < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
