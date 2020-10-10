FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc

USER root

RUN setcap CAP_NET_BIND_SERVICE=+eip setcap cap_net_bind_service=ep /home/linuxbrew/.linuxbrew/Cellar/nginx/1.19.1/bin/nginx
RUN /home/linuxbrew/.linuxbrew/Cellar/nginx/1.19.1/bin/nginx

USER gitpod

RUN npm install @abtnode/cli -g
