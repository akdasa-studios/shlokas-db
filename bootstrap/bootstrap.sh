#!/bin/sh

npm install
npx couchdb-bootstrap ${BOOTSTRAP_DB_HOST} config
