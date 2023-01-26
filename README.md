# BIRD2 Internet Routing Daemon for EdgeOS

## Build

```sh
tar --strip-components 1 --owner=0 --group=0 --exclude=".*" -cvzf bird2-e100.tar.gz e100
```

## Extract
```
sudo adduser --quiet --system --group --no-create-home --home /run/bird bird
sudo tar -xzf bird2-e100.tar.gz -C /
sudo chown bird:bird /etc/bird/*.conf
sudo chmod 640 /etc/bird/*.conf
```
