# kubernetes-sampath-web-app-with-monitoring
## Overview
### Deployment in Kubernetes
- [db.yaml] : Creates MySQL deployment
- [web-app.yaml]: Create web server deployment

### Monitoring setup
- Add helm repo : ```helm repo add prometheus-community https://prometheus-community.github.io/helm-charts```
- Install prometheus and grafana using helm: ```helm install stable prometheus-community/kube-prometheus-stack -f values.yaml --namespace prometheus-grafana```


[db.yaml]: <https://github.com/amith-jayawardane/kubernetes-sampath-web-app-with-monitoring/blob/main/db.yaml>
[web-app.yaml]: <https://github.com/amith-jayawardane/kubernetes-sampath-web-app-with-monitoring/blob/main/web-app.yaml>