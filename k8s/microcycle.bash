
microk8s.stop
snap remove microk8s
snap install microk8s --classic
snap alias microk8s.kubectl kubectl
microk8s.status --wait-ready
microk8s.enable ingress
