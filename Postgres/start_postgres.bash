#!/bin/bash

# Persistent volume for PostgreSQL data
docker volume create dashboard_postgres_data

# Run PostgreSQL container
docker run -d --name dashboard_postgres \
  -v dashboard_postgres_data:/var/lib/postgresql/data \
  -e POSTGRES_USER=myuser \
  -e POSTGRES_PASSWORD=mypassword \
  -e POSTGRES_DB=myappdb \
  -p 5432:5432 \
  postgres:15