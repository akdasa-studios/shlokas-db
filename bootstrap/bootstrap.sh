#!/bin/sh

npm install
npx couchdb-bootstrap ${HOST} config
