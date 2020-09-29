#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
TMP_DIR="/tmp/pwcode" 

[[ -d $TMP_DIR ]] && rm -r -f $TMP_DIR
mkdir $TMP_DIR
mkdir $TMP_DIR/deps && cd $TMP_DIR
mkdir deps/jars

wget -O sqlwb.zip https://www.sql-workbench.eu/Workbench-Build127.zip
unzip sqlwb.zip -d sqlwb
mv sqlwb/sqlworkbench.jar deps/jars

wget https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.32.3.2/sqlite-jdbc-3.32.3.2.jar -O deps/jars/sqlite-jdbc.jar
wget https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.16/postgresql-42.2.16.jar -O deps/jars/postgresql.jar
wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.21/mysql-connector-java-8.0.21.jar -O deps/jars/mysql-connector-java.jar
wget https://repo1.maven.org/maven2/com/microsoft/sqlserver/mssql-jdbc/8.4.1.jre11/mssql-jdbc-8.4.1.jre11.jar -O deps/jars/mssql-jdbc.jre11.jar
wget https://repo1.maven.org/maven2/com/h2database/h2/1.4.200/h2-1.4.200.jar -O deps/jars/h2.jar

cd deps && zip -r $SCRIPTPATH/deps.zip jars









