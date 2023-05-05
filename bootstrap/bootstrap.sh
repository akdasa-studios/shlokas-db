#!/bin/sh

npm install

echo "Preparing configs..."
find . -type f | xargs sed -i "s/{{CONTENT_MANAGER_LOGIN}}/${CONTENT_MANAGER_LOGIN}/g"
find . -type f | xargs sed -i "s/{{CONTENT_MANAGER_PASSWORD}}/${CONTENT_MANAGER_PASSWORD}/g"

echo "Bootstrapping database ${BOOTSTRAP_DB_HOST}..."
npx couchdb-bootstrap ${BOOTSTRAP_DB_HOST} config

echo "Restarting database..."
curl -X POST ${BOOTSTRAP_DB_HOST}/_node/nonode@nohost/_restart -H "Content-Type: application/json"
