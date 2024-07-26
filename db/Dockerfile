FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=cars_db
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
