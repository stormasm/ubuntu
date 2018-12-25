
### Ingress

[Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/)

```
sudo -s

microk8s.enable ingress

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/cloud-generic.yaml

curl localhost:80
```

[Install curl inside your container](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-initialization/)

```
cd website/content/en/examples/pods/
kc create -f simple-pod.yaml
```
