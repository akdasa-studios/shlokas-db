#!/bin/sh

npm install
echo "Bootstrapping database ${BOOTSTRAP_DB_HOST}..."
npx couchdb-bootstrap ${BOOTSTRAP_DB_HOST} config
