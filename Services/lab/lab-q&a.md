



1)
How many Services exist on the system?

controlplane ~ ➜  kubectl get svc 
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   10.43.0.1    <none>        443/TCP   7m48s

answer  1 


2)
That is a default service created by Kubernetes at launch.

ok


3)

What is the type of the default kubernetes service?

  kubectl edit svc  kubernetes 
```yaml
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: "2023-07-12T15:32:21Z"
  labels:
    component: apiserver
    provider: kubernetes
  name: kubernetes
  namespace: default
  resourceVersion: "193"
  uid: 715b4b0f-f460-4adc-83bd-3ef66bd3df0c
spec:
  clusterIP: 10.43.0.1
  clusterIPs:
  - 10.43.0.1
  internalTrafficPolicy: Cluster
  ipFamilies:
  - IPv4
  ipFamilyPolicy: SingleStack
  ports:
  - name: https
    port: 443
    protocol: TCP
    targetPort: 6443
  sessionAffinity: None
  type: ClusterIP
status:
  loadBalancer: {}
```

answer ClusterIP



4)

What is the targetPort configured on the kubernetes service?

answer 6443


5)


How many labels are configured on the kubernetes service?


answer 2



6)
How many Endpoints are attached on the kubernetes service?


controlplane ~ ➜  kubectl describe svc kubernetes 
Name:              kubernetes
Namespace:         default
Labels:            component=apiserver
                   provider=kubernetes
Annotations:       <none>
Selector:          <none>
Type:              ClusterIP
IP Family Policy:  SingleStack
IP Families:       IPv4
IP:                10.43.0.1
IPs:               10.43.0.1
Port:              https  443/TCP
TargetPort:        6443/TCP
Endpoints:         192.30.169.6:6443
Session Affinity:  None
Events:            <none>


answer 1


7)


How many Deployments exist on the system now?

controlplane ~ ➜  kubectl get Deployments
NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
simple-webapp-deployment   4/4    


answer 1



8)

What is the image used to create the pods in the deployment?

controlplane ~ ➜  kubectl describe Deployments/simple-webapp-deployment
```yaml
Name:                   simple-webapp-deployment
Namespace:              default
CreationTimestamp:      Wed, 12 Jul 2023 15:49:37 +0000
Labels:                 <none>
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               name=simple-webapp
Replicas:               4 desired | 4 updated | 4 total | 4 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  name=simple-webapp
  Containers:
   simple-webapp:
    Image:        kodekloud/simple-webapp:red
    Port:         8080/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   simple-webapp-deployment-7b4d799f4d (4/4 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  98s   deployment-controller  Scaled up replica set simple-webapp-deployment-7b4d799f4d to 4
```


answer kodekloud/simple-webapp:red



9)

Are you able to accesss the Web App UI?


Try to access the Web Application UI using the tab simple-webapp-ui above the terminal.

no

10)

Create a new service to access the web application using the service-definition-1.yaml file.

Name: webapp-service
Type: NodePort
targetPort: 8080
port: 8080
nodePort: 30080
selector:
  name: simple-webapp





controlplane ~ ➜  ls
service-definition-1.yaml

controlplane ~ ➜  vi service-definition-1.yaml 

```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: webapp-service
  namespace: default
spec:
  ports:
  - nodePort: 30080
    port: 8080
    targetPort: 8080
  selector:
    name: simple-webapp
  type: NodePort
```

controlplane ~ ➜  kubectl apply -f service-definition-1.yaml 
service/webapp-service created


11)

Access the web application using the tab simple-webapp-ui above the terminal window.
Ok



CONGRATULATIONS!!!!
You have successfully completed the quiz.