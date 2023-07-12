
What needs to be set up 
    All containers/ PODs can communicate to one another with out NAT 
    All nodes can communicate with all containers and vice-versa without NAT


Networking exmaple 
```
Kubernetes Cluster

    Host IP 192.168.1.2

        Internal network IP range 10.244.0.0

            POD IP 10.244.0.2
                ping 10.244.0.3  -> works
            POD IP 10.244.0.3
            POD IP 10.244.0.4

    <Routing>

    Host IP 192.168.1.3

        Internal network IP range 10.244.1.0

            POD IP 10.244.1.2
                ping 10.244.0.3  -> works
            POD IP 10.244.1.3
            POD IP 10.244.1.4


Host IP 192.168.1.4
    ping 10.244.0.3  -> Don't work

```