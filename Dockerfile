FROM docker.io/library/alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add bash bash-completion vim postgresql-client bind-tools iputils && \
    rm -rf /var/cache/apk/*

RUN addgroup -g 1000 ubuntu && \
    adduser -G ubuntu -D -g 'Ubuntu User' ubuntu && \
    cp /etc/profile /home/ubuntu/.profile

USER ubuntu
WORKDIR /home/ubuntu
CMD ["/bin/bash", "-l"]
