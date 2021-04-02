# Bikachu
基于kubernetes+helm的常用开发环境的自动化部署脚本
## 初衷
主要是针对常用的开发环境，快速搭建，帮助刚入门的开发人员，避免由于网络问题，版本问题，权限问题等，不断来回折腾，降低入门门槛

## 工程结构(TODO 初步构想，有可能以后会丰富改变)
* dockerfile-hub 存放常用的镜像构建的Dockerfile文件
* helm-hub 存放chart包的地方
* k8s-cluster k8s集群自动化部署脚本

