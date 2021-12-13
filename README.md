# Bttc Mainnet

## The Bttc mainnet v1 launch

The Bttc Foundation is releasing the genesis information for the Bttc mainnet along with associated Release software.

Please be aware that there is no guarantee a network will start from this recommendation - nodes and validators may never come online, the community may disregard the recommendation and choose different genesis files, and/or they may modify the software in arbitrary ways. Such outcomes and many more are outside the Bttc Foundation's control and completely in the hands of the community.

The recommended genesis file is `genesis.json`. It has the following SHA256 hash:

```
$ shasum -a 256 bttc/genesis.json 
c2aee4c5562b8572052597d8cb541c5522f415c126fbdb524782a17ef22bfbdb  bttc/genesis.json
$ shasum -a 256 delivery/config/genesis.json
1a30f6787d0348832215f4e2c06fb8c4ab57d0a96337a183f1610ff966bad81b  delivery/config/genesis.json
$ b2sum bttc/genesis.json 
f04293da6d5152510a015dac386ba80c9cdde87b723888718caea7fab9895494f82e121cb550db041038eb7102fbe4282238536cc38e0e6d79e6a9f85167ed21  bttc/genesis.json
$ b2sum delivery/config/genesis.json
4590f027fd4ba286d9359e7cb4e73eb86df8753de74be80491112538af4f47756288f0af38efb23bfaabe291066ba98b2cb839396bf1d2b1d7211648947bb3d5  delivery/config/genesis.json
```


The recommended software version is master branch of the [delivery](https://github.com/bttcprotocol/delivery) and [bttc](https://github.com/bttcprotocol/bttc) node software. See the installation instructions and the guide to joining mainnet [here](https://doc.bittorrentchain.io/v1/doc/node.html).

Users wishing to interact with the network should carefully review how to protect themselves and the security advisories in the recent communication provided in the docs on preparing for main net launch.

Please note that this is highly experimental software. In these early days, we can expect to have issues, updates, and bugs. The existing tools require advanced technical skills and involve risks which are outside of the control of the Bttc Foundation and/or the Bttc team. Any use of this open source software is done at your own risk and on a “AS IS” basis, without warranties or conditions of any kind, and any and all liability of the Bttc Foundation and/or the Bttc team for damages arising in connection to the software is excluded. Please exercise extreme caution!

Further, please note that it remains in the community's sole discretion to adopt or not to adopt the recommended genesis info and associated software. 

## Seed Nodes
We request known community members who wish to run public p2p seed nodes make pull requests to add community run seed nodes below.

```
Seed nodes
```
