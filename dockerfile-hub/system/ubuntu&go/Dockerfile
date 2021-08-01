FROM ubuntu:latest
COPY ./shell/update_apt_source.sh /bin/
USER root
RUN apt-get update && apt-get install -y lsb-release && apt-get clean all \
           && chmod +x /bin/update_apt_source.sh && sh /bin/update_apt_source.sh \
           && apt-get -y install fortune \
           && apt-get install -y wget git gcc

# 安装go
COPY ./go-src/go1.16.6.linux-amd64.tar.gz /tmp/
RUN tar -C /usr/local -xzf /tmp/go1.16.6.linux-amd64.tar.gz \
   && rm /tmp/go1.16.6.linux-amd64.tar.gz

# go环境变量配置
ENV GOROOT=/usr/local/go
ENV PATH=$PATH:/usr/local/go/bin
ENV GOPATH=/go
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn,direct
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"






