#!/bin/bash
# Run this script to initialize the database
# This script will create a user and a database
# The user will have read/write access to the database
# The database will have a dummy collection with a dummy document in it for testing
mongosh
use app
db.createCollection('dummy')
db.dummy.insert({test: 'dummy'})
db.createUser({user: 'tony', pwd: 'stark', roles: [{ role: 'readWrite', db: 'app'}]})

# Use this URL to connect to the database:
# mongodb://tony:stark@localhost:27017/app