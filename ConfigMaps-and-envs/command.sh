
# using env in a pod

# (1)

kubectl edit pod colourApp

# (2)
# chnage env APP_COLOR to green

kubectl edit pod colourApp

k replace --force -f /tmp/kubectl-edit-3930718762.yaml 

# (3)
# make a config map with env call  webapp-config-map  with the envs:  APP_COLOR=darkblue APP_OTHER=disregard
kubectl create cm webapp-config-map --from-literal=APP_COLOR=darkblue --from-literal=APP_OTHER=disregard 



# (4)
# Set the pod webapp-color to use the config map webapp-config-map 
kubectl edit pod colourApp
k replace --force -f /tmp/kubectl-edit-234234523.yaml 














