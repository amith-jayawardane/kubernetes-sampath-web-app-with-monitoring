#!/bin/bash

echo "Configuring web app"
kubectl apply -f web-app.yaml

echo "Configuring DB"
kubectl apply -f db.yaml

echo "Configuring prometheus grafana using Helm"
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install stable prometheus-community/kube-prometheus-stack -f values.yaml --namespace prometheus-grafana
