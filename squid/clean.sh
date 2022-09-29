#!/bin/bash
echo "...."
docker-compose stop
docker-compose rm -f
docker network prune -f
echo "Listo"