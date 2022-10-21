# Bttc Mainnet

## The Bttc mainnet v1 launch

The Bttc Foundation is releasing the genesis information for the Bttc mainnet along with associated Release software.

Please be aware that there is no guarantee a network will start from this recommendation - nodes and validators may never come online, the community may disregard the recommendation and choose different genesis files, and/or they may modify the software in arbitrary ways. Such outcomes and many more are outside the Bttc Foundation's control and completely in the hands of the community.

The recommended genesis file is `genesis.json`. It has the following SHA256 hash:

```
$ shasum -a 256 bttc/genesis.json 
133e1b696be10b88c9eae6b9a63c4aeada77e597fe75213cc082228bb8eb047a  bttc/genesis.json
$ shasum -a 256 delivery/config/genesis.json
1a30f6787d0348832215f4e2c06fb8c4ab57d0a96337a183f1610ff966bad81b  delivery/config/genesis.json
$ b2sum bttc/genesis.json 
5d4d5211af5ba274a9c3bb00e7065f8c3ad033ea9295e0a96f5ef3d97f9e709a2e198a960c157d1864c980f02216b31c7ffd127a76002138b1d0cad84fdd6908  bttc/genesis.json
$ b2sum delivery/config/genesis.json
4590f027fd4ba286d9359e7cb4e73eb86df8753de74be80491112538af4f47756288f0af38efb23bfaabe291066ba98b2cb839396bf1d2b1d7211648947bb3d5  delivery/config/genesis.json
```


The recommended software version is master branch of the [delivery](https://github.com/bttcprotocol/delivery) and [bttc](https://github.com/bttcprotocol/bttc) node software. See the installation instructions and the guide to join mainnet [here](https://doc.bt.io/docs/node/build-fullnode).

Users wishing to interact with the network should carefully review how to protect themselves and the security advisories in the recent communication provided in the docs on preparing for mainnet launch.

Please note that this is highly experimental software. In these early days, we can expect to have issues, updates, and bugs. The existing tools require advanced technical skills and involve risks which are outside of the control of the Bttc Foundation and/or the Bttc team. Any use of this open source software is done at your own risk and on a “AS IS” basis, without warranties or conditions of any kind, and any and all liability of the Bttc Foundation and/or the Bttc team for damages arising in connection to the software is excluded. Please exercise extreme caution!

Further, please note that it remains in the community's sole discretion to adopt or not to adopt the recommended genesis info and associated software. 

## Seed Nodes
We request known community members who wish to run public p2p seed nodes make pull requests to add community run seed nodes below.
```
Seed nodes
```
