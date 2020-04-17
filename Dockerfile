FROM postgres:12.2
ENV POSTGRES_PASSWORD postgres 
ENV POSTGRES_DB testvirusdb 
COPY mock-data.sql /docker-entrypoint-initdb.d/