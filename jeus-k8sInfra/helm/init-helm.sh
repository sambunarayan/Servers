#!/usr/bin/env bash
# install helm
export DESIRED_VERSION=v3.2.1; $HOME/Servers/jeus-k8sInfra/helm/helm-install.sh

# add helm chart repository
helm repo add edu https://iac-source.github.io/helm-charts
# update helm
helm repo update

# install metallb (Load Balancer)
helm install metallb edu/metallb \
 --namespace=metallb-system \
 --create-namespace \
 --set controller.tag=v0.8.3 \
 --set speaker.tag=v0.8.3 \
 --set configmap.ipRange=192.168.2.11-192.168.2.29