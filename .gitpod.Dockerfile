FROM gitpod/workspace-full

USER root

RUN brew install nginx \
    which nginx \
    setcap CAP_NET_BIND_SERVICE=+eip `which nginx`
    
USER gitpod

RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN npm install @abtnode/cli -g
