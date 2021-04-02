# Redis
REDIS_PASSWORD=$(kubectl get secret --namespace local-redis local-redis  -o jsonpath="{.data.redis-password}" | base64 --decode)

echo : P1NKwllMX8
## 运行redis-cli进行连接
kubectl run --namespace local-redis redis-redis-client --rm --tty -i --env REDIS_PASSWORD=$REDIS_PASSWORD  --image bitnami/redis:4.0.8-r2 -- bash

进去redis-redis-client后，需要执行redis-cli -h local-redis.local-redis.svc.cluster.local

## 遇到的坑
. 需要为deployment配置安全性上下文，不然没有权限在挂载的pvc中(因为创建本地文件夹的是root用户)，所以需要设置securityContext中fsGroup和runAsUser为0(0是root)


