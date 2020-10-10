FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN which nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc

USER root

RUN setcap CAP_NET_BIND_SERVICE=+eip /home/linuxbrew/.linuxbrew/bin/nginx \
    getcap /home/linuxbrew/.linuxbrew/bin/nginx

USER gitpod

RUN npm install @abtnode/cli -g
