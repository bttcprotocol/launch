This readme is for setting up full nodes/sentry nodes for BTTC network using docker-compose


## 0. Prerequisites

make sure install docker & docker-compose first, and we will recommended docker-compose version below:
```
docker-compose version 1.29.1, build c34c88b2
docker-py version: 5.0.0
CPython version: 3.9.0
OpenSSL version: OpenSSL 1.1.1h  22 Sep 2020
```


## 1. Build images

Make sure you use the lastest released version on Git([delivery release page](https://github.com/bttcprotocol/delivery/releases) & [bttc release page](https://github.com/bttcprotocol/bttc/releases)).

```
sh images-build.sh $BTTC_VERSION $DELIVERY_VERSION

```
Example:
```
sh images-build.sh v1.0.1 v1.0.0
```


## 2. Configuration
Run the following commands for local volumes to be mounted in docker-compose file
```
mkdir -p delivery/scripts

cp delivery-startup.sh delivery/scripts
```

Modify the env file. 

**Mainnet**

Open for editing `vim mainnet-199.env`:
* #`DELIVERY_TAG` — lastest delivery release tag,make sure this tag should be same as your delivery docker images version mentioned above.
* `DELIVERY_TAG=v1.0.0`
* #`BTTC_TAG` — latest bttc release tag.make sure this tag should be same as your bttc docker images version mentioned above. 
* `BTTC_TAG=v1.0.1`

**Testnet**

Open for editing `vim testnet-1029.env`:
* #`DELIVERY_TAG` — lastest delivery release tag,make sure this tag should be same as your delivery docker images version mentioned above. 
* `DELIVERY_TAG=v1.0.0`
* #`BTTC_TAG` — latest bttc release tag.make sure this tag should be same as your bttc docker images version mentioned above.  
* `BTTC_TAG=v1.0.1`

## 3. Run a node
 
```
docker-compose -f docker_compose_file --env-file <env-file> up
```

Example(mainnet):
```
docker-compose -f bttc-sentry-without-snapshotting.yml --env-file mainnet-199.env up
```
Example(testnet):
```
docker-compose -f bttc-sentry-without-snapshotting.yml --env-file testnet-1029.env up
```

## 4. Run a node with snapshot 

If you want to use snapshots file to accelerate sync,download the latest snapshots from [ BTTC mainnet Snapshots](https://snapshots.bt.io/) or [ BTTC testnet Snapshots](https://test-snapshots.bt.io/).

Example(mainnet):
```
wget -c https://bttc-blockchain-snapshots.s3-accelerate.amazonaws.com/bttc-mainnet/2022_03_15/bttc-mainnet-snapshot-2022_03_15.tar.gz
wget -c https://bttc-blockchain-snapshots.s3-accelerate.amazonaws.com/bttc-mainnet/2022_03_15/delivery-mainnet-snapshot-2022_03_15.tar.gz
```
then execute follow commands.
```
mkdir -p bttc/snapshots
mkdir -p delivery/snapshots
mv <path-to-delivery-snapshot-file> delivery/snapshots
mv <path-to-bttc-snapshot-file> bttc/snapshots
```
Note - please make sure to download the snapshot files to the right place.


Open for editing `vim mainnet-199.env`:
* #`DELIVERY_FULL_NODE_SNAPSHOT_FILE` — fullnode snapshot file name of delivery.
* `DELIVERY_FULL_NODE_SNAPSHOT_FILE="delivery-mainnet-snapshot-2022_03_15.tar.gz"`
* #`BTTC_FULL_NODE_SNAPSHOT_FILE` — fullnode snapshot file name of bttc.
* `BTTC_FULL_NODE_SNAPSHOT_FILE="bttc-mainnet-snapshot-2022_03_15.tar.gz"`

start up node(mainnet):
```
docker-compose -f bttc-sentry-with-snapshotting.yml --env-file mainnet-199.env up
```


## 5. Checking
For checking the status of delivery use the following api
```
http://localhost:26657/status
```