FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN which nginx

USER root

RUN setcap CAP_NET_BIND_SERVICE=+eip /user/sbin/nginx \
    getcap /usr/sbin/nginx

USER gitpod

RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN npm install @abtnode/cli -g
