#!/bin/bash
rake db:drop db:create db:migrate db:setup
rails generate devise:install
rails s

