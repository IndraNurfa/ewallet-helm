#!/bin/sh
kubectl apply -f ums-deployment.yaml
kubectl apply -f ums-service.yaml
kubectl apply -f wallet-deployment.yaml
kubectl apply -f wallet-service.yaml
kubectl apply -f transaction-deployment.yaml
kubectl apply -f transaction-service.yaml
kubectl apply -f notification-deployment.yaml
kubectl apply -f notification-service.yaml

sleep 2

kubectl get pods