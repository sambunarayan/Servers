#!/usr/bin/env bash

# Create nfs directory for jenkins
sh $HOME/Servers/jeus-k8sInfra/jenkins/nfs-exporter.sh jenkins

# Chnage permission
chown 1000:1000 /nfs_shared/jenkins/

# Set jenkins volume
kubectl apply -f $HOME/Servers/jeus-k8sInfra/jenkins/jenkins-volume.yaml

# Install Jenkins
sh $HOME/Servers/jeus-k8sInfra/jenkins/jenkins-install.sh