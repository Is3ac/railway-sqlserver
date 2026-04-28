#!/bin/bash
set -e
mkdir -p /.system /log /var/opt/mssql/secrets /var/opt/mssql/data /var/opt/mssql/log /var/opt/mssql/backup
chown -R mssql:root /.system /log /var/opt/mssql
chmod -R 775 /.system /log /var/opt/mssql
exec /opt/mssql/bin/permissions_check.sh "$@"
