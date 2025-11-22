FROM python:3.12-slim

RUN apt-get update -qq \
    && apt-get install -y git --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir dvc==3.64.0 dvc_s3==3.2.2

ENTRYPOINT ["dvc"]
CMD ["version"]
