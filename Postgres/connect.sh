#!/bin/bash

container_name=$1

docker exec -it  "$container_name" psql -U myuser -d myappdb