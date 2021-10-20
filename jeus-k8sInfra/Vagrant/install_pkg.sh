#!/usr/bin/env bash

# install packages 
yum install epel-release -y
yum install vim-enhanced -y
yum install git -y
yum install java-1.8.0-openjdk-devel -y

# install docker 
yum install docker-ce-18.09.9-3.el7 docker-ce-cli-18.09.9-3.el7 \
    containerd.io-1.2.6-3.3.el7 -y
systemctl enable --now docker

# install kubernetes cluster 
yum install kubectl-$1 kubelet-$1 kubeadm-$1 -y
systemctl enable --now kubelet

# git clone Servers.git 
if [ $2 = 'Main' ]; then
  git clone https://github.com/sambunarayan/Servers.git
  mv /home/vagrant/Servers $HOME
  find $HOME/jeus-k8sInfra/* -regex ".*\.\(sh\)" -exec chmod 700 {} \;
fi
