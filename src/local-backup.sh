#! /bin/sh

set -eu
set -o pipefail

source /env.sh

rm -rf /backup/*
cd /backup

echo "Creating backup of $POSTGRES_DATABASE database..."
pg_dump --Fd -d $DATABASE_URL $PGDUMP_EXTRA_OPTS -f /backup
echo "Backup complete."

