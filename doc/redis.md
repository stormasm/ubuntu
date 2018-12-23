
To install redis:
```
sudo apt -y install redis-server
```

To remove redis
```
sudo apt -y remove redis-server
```

To turn off having redis start at boot time:
```
sudo systemctl disable redis-server
```

To turn on having redis start at boot time:
```
sudo systemctl enable redis-server
```

To start and stop redis

```
sudo systemctl start redis-server
sudo systemctl stop redis-server
```

### Useful Redis Links

[Digital Ocean: How to install Redis](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04)

##### Kubernetes Links

[Use Port Forwarding to Access Applications in a Cluster](https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/)

If you do not feel like doing a port forward you can simply
go into the pod in the cluster

##### How to get into the pod in the container

```
kc get pods
```

Then use the name from the pod to run the following command

```
kc exec -it podname -- /bin/bash
```
