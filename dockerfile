FROM mysql:latest
MAINTAINER hope <espoir.ngamijean@gmail.com>

ENV MYSQL_DATABASE dbpfe
ENV MYSQL_ROOT_PASSWORD passwordpfe
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306

