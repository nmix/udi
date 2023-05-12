FROM python:3.11-slim

RUN apt-get update -qq \
    && apt-get install -y git --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /moin

WORKDIR $APP_HOME

COPY . .

RUN pip install --upgrade . && \
    pip install waitress==2.1.2

RUN moin create-instance && moin index-create

EXPOSE  8080
ENTRYPOINT ["waitress-serve", "--call", "src.moin.app:create_app"]
