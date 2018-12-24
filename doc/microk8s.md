
### To bring up microk8s

```
bash addk8s-microk8s.bash
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
