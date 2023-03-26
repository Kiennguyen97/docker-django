Create docker file Dockerfile
FROM python:3.9-slim-buster
ENV PYTHONUNBUFFERED 1
WORKDIR /django
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

docker-compose.yml
version: "3.9"
services:
 app:
   build:
       context: .
       dockerfile: Dockerfile
   volumes:
     - ./src:/django
   ports:
     - "8000:8000"
   image: app:django
   container_name: django_container
   command: python manage.py runserver 0.0.0.0:8000

docker-compose build

docker-compose run --rm app django-admin startproject core .

docker-compose -f docker-compose.yml  up -d
