#!/bin/bash

docker run --name sqldocker -e POSTGRES_PASSWORD="@sde_password012" -e POSTGRES_USER=test_sde -e POSTGRES_DB=demo -d -p 5432:5432 -v C:\Users\BKhabibullin\Documents\GitHub\sde_test_db/sql:/var/lib/postgresql/sql postgres
sleep 5
docker exec -it sqldocker psql -d demo -U test_sde -f /var/lib/postgresql/sql/init_db/demo.sql