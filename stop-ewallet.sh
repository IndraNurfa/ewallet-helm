#!/bin/sh
kubectl delete -f ums-deployment.yaml
kubectl delete -f ums-service.yaml
kubectl delete -f wallet-deployment.yaml
kubectl delete -f wallet-service.yaml
kubectl delete -f transaction-deployment.yaml
kubectl delete -f transaction-service.yaml
kubectl delete -f notification-deployment.yaml
kubectl delete -f notification-service.yaml

sleep 1

kubectl get pods