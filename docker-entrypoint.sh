#!/bin/sh

WORKDIR=$(pwd)

echo $WORKDIR

echo 'Sleeping 30s...'
sleep 30

echo 'Starting...'
echo "############## Building Configuration Server ##############"
cd $WORKDIR/caderneta-config-server
mvn clean package

echo 'Starting aplicacao'
cd $WORKDIR/caderneta-config-server/target
#java -jar -Dspring.profiles.active=prod caderneta-config-server-0.0.1-SNAPSHOT.jar
java -jar caderneta-config-server-0.0.1-SNAPSHOT.jar