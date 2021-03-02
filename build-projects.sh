#!/bin/bash

WORKDIR=$(pwd)

echo $WORKDIR

echo "############## Building Configuration Server ##############"
cd $WORKDIR/caderneta-config-server
mvn clean package

echo "############## Building Eureka Server ##############"
cd $WORKDIR/caderneta-eureka-server
mvn clean package

echo "############## Building Caderneta User ##############"
cd $WORKDIR/caderneta-user-services
mvn clean package -DskipTests=true

echo "############## Building Caderneta Conta ##############"
cd $WORKDIR/caderneta-contas-services
mvn clean package -DskipTests=true

echo "############## Building Caderneta Dashboard ##############"
cd $WORKDIR/caderneta-dashboard-services
mvn clean package -DskipTests=true

echo "############## Building Caderneta Stream ##############"
cd $WORKDIR/caderneta-stream-services
mvn clean package -DskipTests=true

echo "############## Building Caderneta Gateway ##############"
cd $WORKDIR/caderneta-gateway
mvn clean package -DskipTests=true