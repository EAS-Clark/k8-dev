
Using a service to get access to a pod web page 

the service acts like a virtual server inside of the node 
    has its own IP (cluster IP of the service)


Networking exmaple 
```
Kubernetes Cluster

    Host IP 192.168.1.2
        Internal network IP range 10.244.0.0
                ^
                |
            [30008] my-Service IP:10.106.1.12 [80] (2)
                |
                v
            POD MyApp IP 10.244.0.2 
                Website [80] (1)


Host IP 192.168.1.4
    curl http://10.244.0.2:30008 -> Helloworld

```

(1) Target port - what port needs to be open on a pod

(2) Port - the port on the Service its self 

(3) NodePort - has a range default [30000 - 32767]