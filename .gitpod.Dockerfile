FROM gitpod/workspace-full

ENV HOME=/home/arcblock
ENV GROUP=arcblock
ENV USER=arcblock

RUN apt-get upgrade -yy && \
    apt-get update && \
    apt-get install curl build-essential -yy && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install sudo -yy && \
    apt-get install vim -yy && \
    apt-get install -yy curl gnupg2 ca-certificates lsb-release && \
    echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list && \
    curl -fsSL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
    apt-key fingerprint ABF5BD827BD9BF62 && \
    apt-get update -yy && \
    apt-get install nginx -yy && \
    apt-get install libcap2-bin -yy && \
    setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx

RUN groupadd arcblock && \
    useradd -g $GROUP $USER --home $HOME -s /bin/bash -p "$(openssl passwd -1 arcblock)" && \
    npm install -g @abtnode/cli

RUN chown -R $USER $HOME && \
    usermod -aG sudo $USER

USER $USER
WORKDIR $HOME
