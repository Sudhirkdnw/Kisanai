#!/bin/bash

echo "BUILD START"

pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate
python manage.py tailwind install
python manage.py collectstatic --noinput  # Ensure noinput is used to bypass prompts
python manage.py tailwind start

echo "BUILD COMPLETE"