#!/bin/bash
#
# Starts the mysql database & runs the rails app.
#


#Setup the database
service mysql start
mysql --user="cbeuser" --password="cbepswd" --execute="CREATE DATABASE cbe_etranscript_tp;"
mysql --user="cbeuser" --password="cbepswd" cbe_etranscript_tp < ./data/lti2_tp_mysql_init.sql
mysql --user="cbeuser" --password="cbepswd" cbe_etranscript_tp < ./data/tpsampleapp.sql

#Migrate the database
rake db:migrate RAILS_ENV=development

#run the app
rails s -p 4000