#!/bin/bash

# Fix permissions after volume mounts
mkdir -p /.system /log /var/opt/mssql/secrets /var/opt/mssql/data /var/opt/mssql/log /var/opt/mssql/backup
chown -R mssql:root /.system /log /var/opt/mssql
chmod -R 775 /.system /log /var/opt/mssql

# Start SQL Server as mssql user
exec su -s /bin/bash mssql -c "/opt/mssql/bin/sqlservr"
