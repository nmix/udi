FROM python:3.11-slim AS base

RUN apt-get update && \
    apt-get install --no-install-recommends -y python3-dev libpq-dev gcc

RUN pip install --no-cache-dir poetry==1.8.2
