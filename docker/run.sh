#!/bin/bash
#
# Starts the mysql database & runs the rails app.
#
[ -z "$HOST_PROTOCOL" ] && export HOST_PROTOCOL=http
[ -z "$HOST_DOMAIN" ] && export HOST_DOMAIN=localhost
[ -z "$HOST_PORT" ] && export HOST_PORT=4000
[ -z "$HOST" ] && export HOST="$HOST_PROTOCOL://$HOST_DOMAIN:$HOST_PORT"

#TODO: would like to support these parameters at some point
#[ -z "$MYSQL_HOST" ] && export MYSQL_HOST=`/sbin/ip route|awk '/default/ { print $3 }'`
#[ -z "$MYSQL_PORT" ] && export MYSQL_PORT=5984

#Setup the database
service mysql start
mysql --user="cbeuser" --password="cbepswd" --execute="CREATE DATABASE cbe_etranscript_tp;"
mysql --user="cbeuser" --password="cbepswd" cbe_etranscript_tp < ./data/lti2_tp_mysql_init.sql
mysql --user="cbeuser" --password="cbepswd" cbe_etranscript_tp < ./data/tpsampleapp.sql

mysql --user="cbeuser" --password="cbepswd" --database "cbe_etranscript_tp" \
      --execute="update lti2_tp_registries set content = '$HOST' where name = 'tp_deployment_url'"

#Migrate the database
rake db:migrate RAILS_ENV=development

#run the app
rails s -p 4000