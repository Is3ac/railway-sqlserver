FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
RUN mkdir -p /.system && chown -R mssql:root /.system && chmod -R 775 /.system
USER mssql
