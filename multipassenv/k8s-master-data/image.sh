#!/bin/bash
images=(
    kube-apiserver:v1.21.1
    kube-controller-manager:v1.21.1
    kube-scheduler:v1.21.1
    kube-proxy:v1.21.1
    pause:3.4.1
    etcd:3.4.13-0
    #coredns:v1.8.0
)

for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
    docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done

# 由于最新版的kubernetes:v1.21.0需要coredns:v1.8.0，但是registry.cn-hangzhou.aliyuncs.com/google_containers没有，只能从docker上下载再改tag
docker pull louwy001/coredns-coredns:v1.8.0
docker tag louwy001/coredns-coredns:v1.8.0 k8s.gcr.io/coredns/coredns:v1.8.0


# 关于cni的还需要下载几个镜像
 # docker pull calico/node:v3.18.1
 # docker pull calico/cni:v3.18.1
 # docker pull calico/pod2daemon-flexvol:v3.18.1
 # docker pull calico/kube-controllers:v3.18.1