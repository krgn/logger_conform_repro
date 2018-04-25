# ConLogs

Quick way to reproduce the gelf logger issue in conjunction with conform.

## Setup

Edit `config/con_logs.prod.conf` and set (not really necessary though, since it uses UDP)

```
logger.gelf_logger.host = "your-host-here.com"
logger.gelf_logger.port = 12201                 # or whatever your graylog port is
```

## Reproducing with conform

```shell
export USE_CONFORM=true
env MIX_ENV=prod mix do deps.clean --all, deps.get, release
_build/prod/rel/con_logs/bin/con_logs foreground
```


## Reproducing without conform

```shell
export USE_CONFORM=false
env MIX_ENV=prod mix do deps.clean --all, deps.get, release
_build/prod/rel/con_logs/bin/con_logs foreground
```

