#!/usr/bin/env bash
echo 'migrate database main'
docker exec -it django python manage.py migrate
echo 'create superuser admin'
docker exec -it django python manage.py createsuperuser --username admin --database default
