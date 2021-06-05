# Start minikube
minikube start --driver=docker

# Deploy
kubectl apply -f load-balancer-example.yaml
# Display information about the Deployment:
kubectl get deployments hello-world
kubectl describe deployments hello-world

# Display information about your ReplicaSet objects:
kubectl get replicasets
kubectl describe replicasets

# Create a Service object that exposes the deployment:
kubectl expose deployment hello-world --type=LoadBalancer --name=my-service

# Display information about the Service:
kubectl get services my-service
# Magic 
minikube tunnel
#Test
curl http://127.0.0.1:8080

# Display detailed information about the Service:
kubectl describe services my-service

kubectl get pods --output=wide
docker ps