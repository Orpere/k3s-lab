#k3s

install 


1)

```
curl -sfL https://get.k3s.io | sh -
```

2) on the server 
  
```bash
sudo k3s server &
# Kubeconfig is written to /etc/rancher/k3s/k3s.yaml
sudo k3s kubectl get nodes

# On a different node run the below. NODE_TOKEN comes from 
# /var/lib/rancher/k3s/server/node-token on your server
```

3) run on the nodes  

sudo k3s agent --server https://myserver:6443 --token ${NODE_TOKEN}