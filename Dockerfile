FROM python:3.9.15-slim-buster

WORKDIR  usr/src/app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1
RUN apt-get update && apt-get install libgomp1
RUN pip install --upgrade pip
COPY ./requerements.txt .
RUN pip install -r requerements.txt
COPY . .