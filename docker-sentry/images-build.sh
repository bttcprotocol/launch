#---------------------bttc---------------------
BTTC_VERSION=$1
# use our github folder
mkdir -p github
cd github

# Clone the repo
git clone https://github.com/bttcprotocol/bttc.git
cd bttc

# This is the current recommended version
git checkout $BTTC_VERSION

# Build the docker image
docker build --tag bttc:$BTTC_VERSION .

#---------------------delivery---------------------
DELIVERY_VERSION=$2
cd github
# Clone the repo
git clone https://github.com/bttcprotocol/delivery.git
cd delivery

# Checkout the mainnet release version
git checkout $DELIVERY_VERSION

# Copy the Dockerfile up a directory
cp docker/Dockerfile .

# Build the docker image
docker build --tag delivery:$DELIVERY_VERSION .

