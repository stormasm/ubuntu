#
# Run these commands on master prior to running any
#
# kubeadm join commands on the client nodes...

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# This is an example of an addon you can run...
# But you do not need to run any addons.
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
