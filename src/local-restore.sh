#! /bin/sh

set -ue
set -o pipefail

source ./env.sh

conn_opts="-d $DATABASE_URL"

echo "Restoring from backup..."
pg_restore -Fd $PGRESTORE_EXTRA_OPTS $conn_opts --clean --if-exists -f /backup
echo "Restore complete."
