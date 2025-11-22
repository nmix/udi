FROM redis:6

WORKDIR /redis

COPY redis/entrypoint.sh ./

RUN chmod +x entrypoint.sh

ENTRYPOINT ./entrypoint.sh
