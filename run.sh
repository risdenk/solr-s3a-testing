#!/usr/bin/env bash

docker-compose pull
docker-compose build

docker-compose up -d fakes3

while ! nc -z localhost 4569; do
  sleep 0.1 # wait for 1/10 of the second before check again
done

AWS_ACCESS_KEY_ID=MyAccessKey AWS_SECRET_ACCESS_KEY=MySecretKey aws --endpoint-url=http://localhost:4569 s3 mb s3://solr

docker-compose up -d zookeeper solr

while ! nc -z localhost 8983; do
  sleep 0.1 # wait for 1/10 of the second before check again
done

docker-compose logs -f fakes3 solr
#docker-compose logs -f solr

