How to Install Kubernetes From Scratch

1) Fire up 2 droplets at the same time
2) Then attach the volumes to them that are already there...
3) Run the following scripts
* bash addpackages
* bash adduser
* bash adddocker
* bash addcrio
* bash addk8s

### Doc for Step 1
[Installing Docker and then CRI-O](https://kubernetes.io/docs/setup/cri/)
### Doc for Step 2
[Installing kubeadm, kubelet, and kubectl](https://kubernetes.io/docs/setup/independent/install-kubeadm/)

### Now on the master machine
##### run this command as root....

on version 13
```
kubeadm init --ignore-preflight-errors=all
```
on version 12
```
kubeadm init
```

Now run this on the master machine
```
bash addk8s-cluster
```

On the client you can now run the
```
kubeadm join
```
command with the string that you were given by the master

```
kubeadm join 104.248.183.245:6443 --token hj3ncv.7aflhzeogf1y0bz7 --discovery-token-ca-cert-hash sha256:bf4dc9ce49ca0de14bb3189c1738394c839fb842c48fd424503069049368840b
```

### on Digital Ocean call the node k8s-master

##### k8s master droplet

machine name = k8s-master   
volume name = k8s 2Gig

##### k8s client droplet

machine name = k8s-client1   
volume name = k8sc1 1Gig



After you get the binaries the first thing to do is

https://kubernetes.io/docs/setup/cri/

Install Docker
By running this script

Install CRI-O
By running this script

Install kubeadm, kubelet, and kubectl
By running this script

Now run
kubeadm init


CRI-O Notes

[part one](https://github.com/kubernetes-sigs/cri-tools#install-crictl)

[part two](https://github.com/kubernetes-sigs/cri-o/blob/master/tutorial.md#ensure-the-crio-service-is-running)

This is NOT NEEDED since things were installed above but in case you want to know where the binaries are located or you want other k8s binaries besides kubeadm, kubelet, and kubectl
go here....

To download the kubernetes binaries on ubuntu
```
wget https://dl.k8s.io/v1.12.3/kubernetes-server-linux-amd64.tar.gz
```
