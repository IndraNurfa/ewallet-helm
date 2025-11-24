# E-Wallet Kubernetes Deployment

This repository contains the Kubernetes manifests used to deploy the E-Wallet Microservices Application.
It includes configurations for deployments, services, ingress, environment variables, secrets, and other operational resources required to run the platform on a Kubernetes cluster.

## Microservices Repositories

The E-Wallet system is composed of the following services:
- User Management Service (UMS) – [Repository Link](https://github.com/IndraNurfa/ewallet-ums)
- Wallet Service – [Repository Link](https://github.com/IndraNurfa/ewallet-wallet)
- Transaction Service – [Repository Link](https://github.com/IndraNurfa/ewallet-transaction)
- Notification Service (SMTP) – [Repository Link](https://github.com/IndraNurfa/ewallet-notification)

## Add secrets

```bash
kubectl create secret generic smtp-secret \
  --from-literal=SMTP_AUTH_PASSWORD="your_smtp_password"

kubectl create secret generic db-secret \
  --from-literal=DB_PASSWORD="your_db_password"
```

You can verify them with:

```bash
kubectl get secrets
```

## Run deployment

```bash
sh run-ewallet.sh
```

## Check status

```bash
kubectl get pods
kubectl get svc
```

## Stop deployment

```bash
sh stop-ewallet.sh
```
