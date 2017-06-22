#!/bin/bash
echo 'drop the database'
rake db:drop 
echo 'create the database'
rake db:create 
echo 'create the database tables'
rake db:migrate 
echo 'add sample data to the database'
rake db:setup
echo "let's start the server, on port 3000"
rails s

