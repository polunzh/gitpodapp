FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN ln -s /home/linuxbrew/.linuxbrew/bin/nginx /usr/local/bin/nginx

USER root

RUN ls -l /usr/local/bin/nginx
RUN which nginx
RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/local/bin/nginx
RUN getcap /usr/local/bin/nginx

USER gitpod

RUN npm install @abtnode/cli -g
