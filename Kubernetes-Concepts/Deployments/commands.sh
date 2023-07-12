
Rollout Command 

    

kubectl edit deployment/myapp-deployment
    # will update deployment to the yaml edits or command edits 

kubectl rollout status deployment/myapp-deployment

kubectl rollout history deployment/myapp-deployment



undo a rollout (Rollback)

kubectl rollout undo deployment/myapp-deployment











