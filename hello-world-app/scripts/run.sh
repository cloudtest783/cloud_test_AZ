#!/bin/bash

# Set KUBECONFIG
export KUBECONFIG=~/.kube/config

# Apply Kubernetes manifests
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
