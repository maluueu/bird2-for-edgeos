# BIRD2 Internet Routing Daemon for EdgeOS

## Build

```sh
tar --exclude='.[^/]*' --owner=0 --group=0 -cvzf bird2-e100.tar.gz -C e100 .
```

## Extract
```sh
sudo adduser --quiet --system --group --no-create-home --home /run/bird bird
sudo tar -xzf bird2-e100.tar.gz -C /
```

Since the config file at `/etc/bird/bird.conf` could contain secrets, set permissions accordingly:
```sh
sudo chown bird:bird /etc/bird/bird.conf
sudo chmod 640 /etc/bird/bird.conf
```
