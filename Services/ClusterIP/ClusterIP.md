# Cluster IP


Networking exmaple 
```
Kubernetes Cluster

# Front-end
    POD 10.244.0.2   POD 10.244.0.3   POD 10.244.0.4
                 \         |          /
                  \        |         /
                    [ Back-end : 80]
                  /        |         \
# back-end       /         |          \
POD 10.244.0.5:80   POD 10.244.0.6:80   POD 10.244.0.7:80
                 \         |          /
                  \        |         /
                       [ redis ]
                  /        |         \
# redis          /         |          \
    POD 10.244.0.8   POD 10.244.0.9   POD 10.244.0.10


```