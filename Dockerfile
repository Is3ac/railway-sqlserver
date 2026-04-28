FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
RUN mkdir -p /.system && chown -R mssql:root /.system && chmod -R 775 /.system && \
    mkdir -p /log && chown -R mssql:root /log && chmod -R 775 /log
USER mssql
