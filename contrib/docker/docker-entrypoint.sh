#!/bin/sh

python3 /app/manage.py flush --no-input
python3 /app/manage.py migrate

exec "$@"
