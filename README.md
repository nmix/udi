# Useful Docker Images

* ansible.Dockerfile - alpine-based ansible
* python3.11-slim-poetry-pg.Dockerfile - slim-based python with poetry and postgresql libs
* moin.Dockerfile - moin wiki image (see https://github.com/moinwiki/moin)

## Moin

Run moin container
```bash
# --- clone moin repo
git clone https://github.com/moinwiki/moin
cd moin
# --- build image
wget https://raw.githubusercontent.com/nmix/udi/main/moin.Dockerfile
docker build . -f moin.Dockerfile -t moin:latest
# --- run image
docker run --rm --name moin -p 8080:8080 moin
```
Browse http://localhost:8080

Run moin wiki with custom config
```bash
cp ./src/moin/config/wikiconfig.py wikiconfig.py
# --- edit config
# --- run container
docker run --rm --name moin -p 8080:8080 -v $(pwd)/wikiconfig.py:/moin/wikiconfig.py moin
```

Run moin with persistance
```bash
docker volume create moin_wiki
docker run --rm --name moin -p 8080:8080 \
  -v moin_wiki:/moin/wiki \
  moin
```
