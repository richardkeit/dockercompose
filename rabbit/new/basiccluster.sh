#!/bin/bash

#Basic attempt clustering

/usr/sbin/rabbitmq-server -detached

echo "Stopping App with /usr/sbin/rabbitmqctl stop_app"
/usr/sbin/rabbitmqctl stop_app 
/usr/sbin/rabbitmqctl join_cluster rabbit@$CLUSTER_WITH 


/usr/sbin/rabbitmqctl start_app 