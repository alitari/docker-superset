# docker-superset
Docker image for [Apache superset](https://superset.incubator.apache.org/). Basic work was done by [maedamikio/superset](https://github.com/maedamikio/superset).
There are some extensions for using it with persistence:
1. You can overwrite the default configuration by putting the configuration file `superset_config.py` on path `/etc/superset`
2. The initial db state with the admin user is copied to `/etc/superset-db` if no file exists. So you can mount `/etc/superset-db` and still login ( with admin:admin).

## example
```bash
# provide superset_config.py on current dir , database file in ./db
docker run -v ${PWD}:/etc/superset -v ${PWD}/db:/etc/superset-db -d --name superset alitari/superset
```
