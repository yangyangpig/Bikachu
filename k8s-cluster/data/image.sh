#!/bin/bash

images=(
    kube-apiserver:v1.20.5
    kube-controller-manager:v1.20.5
    kube-scheduler:v1.20.5
    kube-proxy:v1.20.5
    pause:3.2
    etcd:3.4.13-0
    coredns:1.7.0
)

for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
    docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done

# 关于cni的还需要下载几个镜像
 # docker pull calico/node:v3.18.1
 # docker pull calico/cni:v3.18.1
 # docker pull calico/pod2daemon-flexvol:v3.18.1
 # docker pull calico/kube-controllers:v3.18.1