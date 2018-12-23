
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
