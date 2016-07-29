###RabbitMQ Clustering

#Create Bridge Network

```sh
d network create rabbit
```

#Create the first container node
```sh
d run -h rabbit1 --name rabbit1 --net=rabbit richardkeit/rabbitmq
```

#Create the second container node
```sh
d run -h rabbit2 --name rabbit2 --net=rabbit -e CLUSTER_WITH="rabbit1" --link rabbit1:rabbit1 richardkeit/rabbitmq 
```
#Cluster the first node to the second node
```sh
d exec rabbit2 sh basiccluster.sh
```

#Verify it is working as expected
```sh
d exec rabbit1 rabbitmqctl cluster_status
d exec rabbit2 rabbitmqctl cluster_status
```