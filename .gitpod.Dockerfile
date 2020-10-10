FROM ubuntu:18.04

RUN apt-get upgrade -yy && \
    apt-get update && \
    apt-get install curl build-essential -yy && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -yy curl gnupg2 ca-certificates lsb-release && \
    echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | tee /etc/apt/sources.list.d/nginx.list && \
    curl -fsSL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
    apt-key fingerprint ABF5BD827BD9BF62 && \
    apt-get update -yy && \
    apt-get install nginx -yy && \
    apt-get install libcap2-bin -yy && \
    apt-get install vim -yy && \
    setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx && \
    apt-get install nodejs -yy



USER gitpod

RUN npm install -g @abtnode/cli --unsafe-perm && \
    npm install -g pm2
