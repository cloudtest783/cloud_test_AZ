#!/bin/bash

# Login to Azure Container Registry
az acr login --name <your_acr_name>

# Push Docker image to ACR
docker push <your_acr_name>.azurecr.io/hello-world:latest
