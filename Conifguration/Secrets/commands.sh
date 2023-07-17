


# Secret Name: db-secret
# Secret 1: DB_Host=sql01
# Secret 2: DB_User=root
# Secret 3: DB_Password=password123


k create secret generic db-secret --from-literal=DB_Host=sql01 --from-literal=DB_User=root --from-literal=DB_Password=password123



k edit pod webapp-pod 
k replace -f --force /tmp/kubectl-edit-423310887.yaml




