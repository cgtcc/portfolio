#!/bin/bash
rake db:drop db:create db:migrate db:setup
