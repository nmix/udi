FROM python:3.12-slim

RUN pip install --no-cache-dir dvc==3.43.1

ENTRYPOINT ["dvc"]
CMD ["version"]
