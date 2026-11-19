#!/bin/bash
set -e

echo "Iniciando servidor Odoo..."

exec odoo -d neondb \
  --http-port="${PORT:-8069}" \
  --http-interface=0.0.0.0 \
  --db_host="$PGHOST" \
  --db_port="$PGPORT" \
  --db_user="$PGUSER" \
  --db_password="$PGPASSWORD"
