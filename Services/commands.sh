# help full commands

# make a service from a yaml file
kubectl create -f NodePort-service-def.yaml

# show the running services
kubectl get svc 

# prints the url of the service
minikube service myapp-service --url

