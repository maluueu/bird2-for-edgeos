# BIRD2 Internet Routing Daemon for EdgeOS

## Install

Download:
- [e50 - mipsel](https://git.zotha.de/lukas/bird2-for-edgeos/-/jobs/artifacts/main/download?job=build%3Amipsel)
- [e100 - mips](https://git.zotha.de/lukas/bird2-for-edgeos/-/jobs/artifacts/main/download?job=build%3Amips)

Extract the zip file downloaded from GitLab and copy the tar.gz archive to the EdgeRouter.

On the EdgeRouter run:
```sh
sudo adduser --quiet --system --group --no-create-home --home /nonexistent bird
sudo tar -xzf bird-2.0.10-e50.tar.gz -C /
```

Since the config file at `/config/bird.conf` could contain secrets, set permissions accordingly:
```sh
sudo chown bird:bird /config/bird.conf
sudo chmod 640 /config/bird.conf
```
