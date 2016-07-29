#!/bin/bash
## Files that have been run

#create bridge network
d network create rabbit

d run -h rabbit1 --name rabbit1 --net=rabbit richardkeit/rabbitmq

d run -h rabbit2 --name rabbit2 --net=rabbit -e CLUSTER_WITH="rabbit1" --link rabbit1:rabbit1 richardkeit/rabbitmq 
# then run
d exec rabbit2 sh basiccluster.sh

## verify working
d exec rabbit1 rabbitmqctl cluster_status
d exec rabbit2 rabbitmqctl cluster_status