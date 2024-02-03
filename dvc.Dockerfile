FROM python:3.12-slim

RUN apt-get update -qq \
    && apt-get install -y git --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir dvc==3.43.1 dvc_s3==3.0.1

ENTRYPOINT ["dvc"]
CMD ["version"]
