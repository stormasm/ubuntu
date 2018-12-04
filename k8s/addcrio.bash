
#
# For more info:
# https://kubernetes.io/docs/setup/cri/#cri-o
#

modprobe overlay
modprobe br_netfilter

# Setup required sysctl params, these persist across reboots.
cat > /etc/sysctl.d/99-kubernetes-cri.conf <<EOF
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

sysctl --system

# Install prerequisites
apt-get update
apt-get -y install software-properties-common

add-apt-repository ppa:projectatomic/ppa
apt-get update

# Install CRI-O
apt-get -y install cri-o-1.11

# Start CRI-O
systemctl start crio

#
# From here
# https://github.com/kubernetes-sigs/cri-tools
# https://github.com/kubernetes-sigs/cri-tools/blob/master/docs/crictl.md
#
#
# This will be used to test if the above crio is working
# https://github.com/kubernetes-sigs/cri-o/blob/master/tutorial.md#ensure-the-crio-service-is-running
#
# And here is the command to run...
# crictl --runtime-endpoint unix:///var/run/crio/crio.sock version

VERSION="v1.12.0"
wget https://github.com/kubernetes-sigs/cri-tools/releases/download/$VERSION/crictl-$VERSION-linux-amd64.tar.gz
sudo tar zxvf crictl-$VERSION-linux-amd64.tar.gz -C /usr/local/bin
rm -f crictl-$VERSION-linux-amd64.tar.gz
