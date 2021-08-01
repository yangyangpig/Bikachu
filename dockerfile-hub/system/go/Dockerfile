FROM golang:1.16-alpine

# 创建存放go文件路径
WORKDIR /app

# go环境设置
COPY ./code/go.mod ./
COPY ./code/go.sum ./

RUN go env -w GO111MODULE=on \
        && go env -w GOPROXY=https://goproxy.cn,direct \
        && go mod download

# copy所有go文件
COPY ./code/*.go ./

# 构建
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /demo

# 暴露端口
EXPOSE 8080

# 执行
CMD ["/demo"]