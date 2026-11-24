#!/usr/bin/env bash
# Runs once, on the first start with an empty data volume.
# Creates a separate database and user for Keycloak so its tables never mix with the app schema.
set -euo pipefail

psql -v ON_ERROR_STOP=1 \
  --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" \
  --set kc_user="$KEYCLOAK_DB_USER" \
  --set kc_password="$KEYCLOAK_DB_PASSWORD" \
  --set kc_db="$KEYCLOAK_DB_NAME" <<'SQL'
CREATE USER :"kc_user" WITH PASSWORD :'kc_password';
CREATE DATABASE :"kc_db" OWNER :"kc_user";
SQL
