
### Looks like 2G of memory works really well...

All of the commands on this page get run as ROOT.

```
bash addemacs.bash

bash adduser.bash

cd k8s
bash micro.bash

cp /mnt/k8sc1/helm/linux-amd64/helm /usr/local/bin
cd /mnt/k8sc1/tmp
```

Get the daily charts if you don't have them already

```
wget https://gcsweb.istio.io/gcs/istio-prerelease/daily-build/release-1.1-latest-daily/charts/istio-1.1.0.tgz
tar xzf filename
```

```
helm template istio --name istio --namespace istio-system > istio.yaml
kubectl create namespace istio-system
kubectl apply -f istio.yaml
```


```
cd /mnt/k8sc1/tmp
export ISTIO_VERSION=1.1.0-snapshot.5
curl -L https://git.io/getLatestIstio | sh -
cd version
```


[Install with Helm](https://istio.io/docs/setup/kubernetes/helm-install/#option-1-install-with-helm-via-helm-template)

```
helm template install/kubernetes/helm/istio --name istio --namespace istio-system > $HOME/istio.yaml

kubectl create namespace istio-system
kubectl apply -f $HOME/istio.yaml
```

[Istio Quick Start](https://istio.io/docs/setup/kubernetes/quick-start/)

  * Install Istio’s Custom Resource Definitions via kubectl apply
  * Then run Option 1
  * Verify the application

[Deploy the Sleep App](https://istio.io/docs/setup/kubernetes/sidecar-injection/#deploying-an-app)

##### Put istioctl on your path

 * Copy .profile over to michael and root

 * Check to make sure istioctl can be found on the path


##### Copy helm to /usr/local/bin

```
cp /mnt/k8sc1/helm/linux-amd64/helm /usr/local/bin

Check to make sure it got there...
helm version
```

##### How to get the latest binary version of helm for linux

```
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-linux-amd64.tar.gz
```

##### How to get the latest binary version of helm for mac

```
curl https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-darwin-amd64.tar.gz --output helm.tar.gz
```
