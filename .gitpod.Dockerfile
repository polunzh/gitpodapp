FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc

USER root

RUN chmod 777 /usr/sbin/nginx
RUN ls -l /usr/sbin/nginx
RUN which nginx
RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx
RUN getcap /usr/sbin/nginx

USER gitpod

RUN npm install @abtnode/cli -g
