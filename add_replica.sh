#!/usr/bin/env bash

curl "http://localhost:8983/solr/admin/collections?action=ADDREPLICA&collection=test&shard=shard1"

