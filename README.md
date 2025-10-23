# E-Wallet Kubernetes Deployment

This repository contains the Kubernetes configuration files for deploying the **E-Wallet** application, including services, deployments, and environment secrets.

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
