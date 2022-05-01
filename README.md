oerp-pricelist
==============

Export a HTML pricelist from OERP

setup
-----

```sh
# apt packages are not required but recommended
apt-get install python-repoze.lru python-natsort
pip install --upgrade -r requirements.txt

cp config.ini.example config.ini
```

You can write your own login data to `config.ini`

### Run in Docker

With progress bars:

```sh
docker-compose build pricelist
docker-compose run pricelist
```

No progress bars:

```sh
docker-compose up --build
```

By default, a rate limiting of one `search` request per two seconds is used.
The settings are exposed as two environment variables.
This example shows them set to 1000 requests every 2 seconds:

```sh
docker-compose run pricelist -e OERP_RATE_LIMIT_CALLS=1000 -e OERP_RATE_LIMIT_PERIOD_SECONDS=2
```

License
-------

[Unilicense](LICENSE)
