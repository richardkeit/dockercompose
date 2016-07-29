FROM rabbitmq:3
MAINTAINER Richard Keit <rajkeit@gmail.com>

###### Used the base RabbitMQ image as it works well! #######

## Built this and referenced on local as 
## d build -t richardkeit/rabbitmq .


##### Set the ENV var to have the same cookie for clustering ##
ENV RABBITMQ_ERLANG_COOKIE=richardrabbit

## Same entry points and ports from the main dockerfile 
COPY basiccluster.sh /
WORKDIR /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 4369 5671 5672 25672
CMD ["rabbitmq-server"]
