# InSane Scanner in a Container

Scans an image upon container run and saves it under `/data/$datetime.jpg`

## Build

```shell
git clone https://github.com/pulsar256/insanescanner.git
cd insanescanner 
docker build -t insanescanner .
```

## Find your scanner

```shell
docker run --privileged --entrypoint="scanimage" insanescanner -L
```

Example:

```shell
docker run --privileged --entrypoint="scanimage" insanescanner -L
Created directory: /var/lib/snmp/cert_indexes

device `pixma:04A91730_A1006B' is a CANON Canon PIXMA MP540 multi-function peripheral
```

scanner device is `pixma:04A91730_A1006B`

## Run

pass the detected scanner device as `DEVICE` environment to the container and mount /data volume outside the container - `/mnt/my_nas` in the example below

```shell
docker run -e DEVICE="pixma:04A91730_A1006B" -v /mnt/my_nas:/data --privileged insanescanner
```
