# Docker Repository for VERGE Daemon

A quick way to spin up the VERGE Daemon with VERGE binaries (verge:6.0.0)  
(no compliling, conf file support, synced blockchain & wallet support)  
Works with Docker Toolbox (VirtualBox VM)

## Requirements:

`docker` and `docker-compose`  

## Usage:

*Note: Everything inside `VERGE` folder will be copied to container's `/root/.VERGE` folder*

Clone the repository

Copy `VERGE.conf` inside `VERGE` folder and add extra parameters to the file if needed (like txindex=1 etc)  
(Optional) If you already have synced blockchain or/and wallet files copy them inside `VERGE` folder aswell  
```sh
docker-compose up
```

## Access:

Make RPC requests to `http://user:password@localhost:20102`  

or  

Interactively connect to container's shell with 
```sh
docker exec -it dockerverge_verged_1 bash
./verge-cli getinfo
```



## For Docker Toolbox:
Replace `localhost` with the ip you get from

```sh
docker-machine ip
```

If you are running out of disk space inside the VM -> remove the default VM and build a bigger one (this will erase all your existing docker containers, images, volumes, networks, ...)

```sh
docker-machine rm -f default
docker-machine create -d virtualbox --virtualbox-disk-size "50000" default
```

This builds up a 50 GB VirtualBox VM


