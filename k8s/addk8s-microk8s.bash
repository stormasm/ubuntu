snap install microk8s --classic
snap alias microk8s.kubectl kubectl
microk8s.status --wait-ready
