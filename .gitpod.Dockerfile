FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN ls -l /home/linuxbrew/.linuxbrew/bin/nginx
RUN which nginx

USER root
RUN setcap CAP_NET_BIND_SERVICE=+eip /home/linuxbrew/.linuxbrew/bin/nginx
RUN getcap /home/linuxbrew/.linuxbrew/bin/nginx

USER gitpod

RUN npm install @abtnode/cli -g
