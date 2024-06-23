FROM python:3.12-alpine3.20

RUN apk add --no-cache s3cmd=2.4.0-r1

CMD ["s3cmd", "--version"]
