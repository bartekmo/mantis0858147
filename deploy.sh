gcloud deployment-manager deployments create mantis0858147 --template infra.jinja
gcloud container clusters get-credentials mantis0858147-gke
kubectl apply -f web-deployment.yaml
kubectl apply -f web-service.yaml
kubectl apply -f internal-ingress.yaml

kubectl get ingress ilb-demo-ingress