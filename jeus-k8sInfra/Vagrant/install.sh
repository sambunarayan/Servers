#!/usr/bin/env bash
# install helm
export DESIRED_VERSION=v3.2.1; /root/Jeus-cloudes/jeus-k8s-cloud/helm/helm-install.sh

# add helm chart repository
helm repo add edu https://iac-source.github.io/helm-charts
# update helm
helm repo update

# install docker registry
sh /root/Jeus-cloudes/jeus-k8s-cloud/docker/create-registry.sh