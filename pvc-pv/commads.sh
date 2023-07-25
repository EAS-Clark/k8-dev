


# set up pv 
kubectl apply -f pv.yaml

# set up pvc 
kubectl apply -f pvc.yaml

# set up Deployment
kubectl apply -f Deployment.yaml
