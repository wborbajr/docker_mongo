![Docker](https://github.com/wborbajr/docker_mongo/blob/master/docker.jpeg)

## Downloading

```bash
git clone https://github.com/wborbajr/docker_mongo.git
cd docker_mongo
```

## MongoDB

Before bring container up, please change environment settings at **.env**

```
MONGO_INITDB_ROOT_USERNAME=xxx
MONGO_INITDB_ROOT_PASSWORD=xxx
MONGO_INITDB_DATABASE=xxx
MONGO_INITDB_USERNAME=xxx
MONGO_INITDB_PASSWORD=xxx
```

## Database

All databases will be saved locally at data folder **./data/db**

**PS:** If you decided to change folders name or path, please, remember to modify the entry **volumes** at **docker-compose.yaml**

```
volumes:
    - ./data/db:/data/db:rw
```

## Port

MariaDB will expose port **17027**, so remember to configure your MySQL Client to connect at **_Port: 17027_**.

You can change it at **docker-compose.yaml** for your own propose.

## To execute

### Just MongoDB

```bash
docker-compose up -d database
```

Or you can run using Makefile

```bash
make up-db
```

### Bringing up MariaDB and Adminer

```bash
docker-compose up -d
```

Or you can run using Makefile

```bash
make up-all
```

## To stop

### Stopping Development environment

```bash
docker-compose down
```

Or you can run using Makefile

```bash
make down
```

## Configuration

You can setup your own configurations just changing file **my.conf** located at config folder.

After setup your own MariaDB configuration, don't forget to enable at **docker-compose.yaml** at **volumes** section to read your configuration file, removing comment tag.

Alternatively you can setup an initial database to be created just modifying **init.sql** that it is at **initdb** folder and enabling at **docker-compose.yaml** at **volumes** section.

## Checking status

```bash
docker-compose ps
```
