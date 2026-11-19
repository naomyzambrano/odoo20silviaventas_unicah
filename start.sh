#!/bin/bash
set -e

odoo -d neondb -i base,ventas_unicah --stop-after-init \
  --db_host="$PGHOST" \
  --db_port="$PGPORT" \
  --db_user="$PGUSER" \
  --db_password="$PGPASSWORD"

exec odoo -d neondb \
  --http-port="${PORT:-8069}" \
  --http-interface=0.0.0.0 \
  --db_host="$PGHOST" \
  --db_port="$PGPORT" \
  --db_user="$PGUSER" \
  --db_password="$PGPASSWORD"
