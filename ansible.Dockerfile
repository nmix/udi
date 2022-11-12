FROM python:3.11-alpine

RUN apk add --no-cache \
    gcc=11.2.1_git20220219-r2 \
    musl-dev=1.2.3-r1 \
    libffi-dev=3.4.2-r1 \
    openssh=9.0_p1-r2 \
    git=2.36.3-r0 \
    && \
    pip install --no-cache-dir ansible==6.6.0 ansible-lint==6.8.6

CMD ["ansible", "--version"]
