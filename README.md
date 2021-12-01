# Bttc Mainnet

## The Bttc mainnet v1 launch

The Bttc Foundation is releasing the genesis information for the Bttc mainnet along with associated Release software.

Please be aware that there is no guarantee a network will start from this recommendation - nodes and validators may never come online, the community may disregard the recommendation and choose different genesis files, and/or they may modify the software in arbitrary ways. Such outcomes and many more are outside the Bttc Foundation's control and completely in the hands of the community.

The recommended genesis file is `genesis.json`. It has the following SHA256 hash:

```
$ shasum -a 256 bttc/genesis.json 
70c410af55653f446d82a30b4c0ffc0d4efc4dfb8a130c32c1a5544bcb4136de  bttc/genesis.json

$ shasum -a 256 delivery/config/genesis.json
bd2bd91b836925561dd0e737b8c16ee9f615f3368e9aac3937afd652479c523a  delivery/config/genesis.json

$ b2sum bttc/genesis.json 
910f39af6e8745cc3ecdf725f9bff22606fc8bfda92a1b038cd51d727e99343d1394ac376bf8d6a8666fbdf4f941fa530b982c69b93f045bdea6982a278faeae  bttc/genesis.json

$ b2sum delivery/config/genesis.json
3be1b3cb152eb3ec64410cd47edb79a2e45629e65d2b6790eb3179bc5b99d6a38579d8e289ad97158a6231895fa12cccc4fff9966c8429d1c7972e5a7f497456  delivery/config/genesis.json
```

It includes a genesis time of 2021-11-30T04:28:03.177054Z. 

The recommended software version is master branch of the [delivery]() and [bttc]() node software. See the installation instructions and the guide to joining mainnet [here]().

Users wishing to interact with the network should carefully review how to protect themselves and the security advisories in the recent communication provided in the docs on preparing for main net launch.

Please note that this is highly experimental software. In these early days, we can expect to have issues, updates, and bugs. The existing tools require advanced technical skills and involve risks which are outside of the control of the Bttc Foundation and/or the Bttc team. Any use of this open source software is done at your own risk and on a “AS IS” basis, without warranties or conditions of any kind, and any and all liability of the Bttc Foundation and/or the Bttc team for damages arising in connection to the software is excluded. Please exercise extreme caution!

Further, please note that it remains in the community's sole discretion to adopt or not to adopt the recommended genesis info and associated software. 

## Seed Nodes
We request known community members who wish to run public p2p seed nodes make pull requests to add community run seed nodes below.

```
Seed nodes


```
