FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
RUN mkdir -p /.system \
             /log \
             /var/opt/mssql/secrets \
             /var/opt/mssql/data \
             /var/opt/mssql/log \
             /var/opt/mssql/backup && \
    chown -R mssql:root /.system /log /var/opt/mssql && \
    chmod -R 775 /.system /log /var/opt/mssql
USER mssql
