#!/bin/bash

echo "**********************************************"
echo "Provisioning kind VM"

apt-get update
apt-get upgrade -y

apt-get install -y curl wget

export DEBIAN_FRONTEND=noninteractive

# Kind
cd /tmp
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/local/bin/kind
#

#k9s
curl -Lo /tmp/k9s_linux_amd64.deb https://github.com/derailed/k9s/releases/download/v0.32.4/k9s_linux_amd64.deb 
apt install /tmp/k9s_linux_amd64.deb

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "**********************************************"
