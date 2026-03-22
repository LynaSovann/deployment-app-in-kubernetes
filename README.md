# Deployment of App in Kubernetes (AWS)

This guide explains how to deploy a Kubernetes cluster on AWS using `kops` and run your applications with an Ingress controller.

## 1. Connect to Your Server

```bash
ssh -i <keypath> ubuntu@54.226.245.61
sudo -i  # Switch to root user
```

## Create Kubernetes Cluster

```bash
kops create cluster \
  --name=kucluster.lynasovann.site \
  --state=s3://kopsstatelyna \
  --zones=us-east-1a,us-east-1b \
  --node-count=2 \
  --node-size=t3.small \
  --control-plane-size=t3.medium \
  --dns-zone=kucluster.lynasovann.site \
  --node-volume-size=12 \
  --control-plane-volume-size=12 \
  --ssh-public-key ~/.ssh/id_ed25519.pub
```

Apply the changes:

```bash
kops update cluster \
  --name=kucluster.lynasovann.site \
  --state=s3://kopsstatelyna \
  --yes --admin
```

Validate the cluster:

```bash
kops validate cluster \
  --name=kucluster.lynasovann.site \
  --state=s3://kopsstatelyna
```

Delete the cluster if needed:

```bash
kops delete cluster \
  --name=kucluster.lynasovann.site \
  --state=s3://kopsstatelyna \
  --yes
```

## 3. Install NGINX Ingress Controller

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/aws/deploy.yaml
```

## 4. Create Namespace

```bash
kubectl apply -f ns.yaml
```

## 5. Deploy Application
