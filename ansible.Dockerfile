FROM python:3.11-alpine3.18

RUN apk add --no-cache \
    gcc=12.2.1_git20220924-r10 \
    musl-dev=1.2.4-r1 \
    libffi-dev=3.4.4-r2 \
    openssh=9.3_p2-r0 \
    git=2.40.1-r0 \
    && \
    pip install --no-cache-dir ansible==8.3.0 ansible-lint==6.18.0

CMD ["ansible", "--version"]
