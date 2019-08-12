#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Load PostGIS into $POSTGRES_DB
echo "Loading PostGIS extensions into $POSTGRES_DB"
"${psql[@]}" --dbname="$POSTGRES_DB" <<-'EOSQL'
    CREATE EXTENSION IF NOT EXISTS postgis;
EOSQL
