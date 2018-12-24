
### To bring up microk8s

```
mkinstall
snap alias microk8s.kubectl kubectl
mkstatus --wait-ready
mkstatus
```

### If deploying redis

```
cd tasks/redis
kc create -f deploy01.yaml
kc create -f service01.yaml

kc get pods
kc exec -it podname -- /bin/bash
```

### To bring down microk8s

```
mkstop
mkremove
```
